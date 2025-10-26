// Package clog exposes a Logger that produces consistent logs sequence about Terraform defs definitions.
// Generations can be run in parallel for several resources, but the final log should have a stable sequence to simplify
// generation differences between multiple versions.
package clog

import (
	"sync"
)

// Logf is function type that matches fmt.Printf, log.Printf, and testing.T.Logf.
type Logf func(format string, args ...interface{})

// Part represents one of the logs sections.
// Its number represent the order of appearance of this part in the logs.
type Part byte

const (
	PartProvider Part = iota
	PartDataSources
	PartResources

	partsCnt
)

// Logger can be used to obtain Logf implementation that produces consistent logs sequence
// for the generation of Terraform definitions.
type Logger struct {
	out   Logf
	parts [partsCnt]partState
}

func New(out Logf) *Logger {
	l := &Logger{
		out: out,
	}
	if l.out == nil {
		l.out = func(format string, args ...any) {}
	}
	l.parts[0].active = true
	return l
}

func (l *Logger) LogPart(part Part) Logf {
	p := &l.parts[part]
	return func(format string, args ...interface{}) {
		p.Lock()
		if p.active {
			l.out(format, args...)
		} else {
			p.records = append(p.records, record{format, args})
		}
		p.Unlock()
	}
}

func (l *Logger) Finish(part Part) {
	p := &l.parts[part]
	p.Lock()
	defer p.Unlock()

	p.done = true
	if !p.active {
		return
	}

	p.active = false
	for i := part + 1; i < partsCnt; i++ {
		nextPart := &l.parts[i]
		nextPart.Lock()
		nextPart.flush(l.out)
		if !nextPart.done {
			nextPart.active = true
			i = partsCnt // break the loop
		}
		nextPart.Unlock()
	}
}

type partState struct {
	sync.Mutex
	records []record
	active  bool
	done    bool
}

type record struct {
	format string
	args   []any
}

func (ps *partState) flush(out Logf) {
	for _, r := range ps.records {
		out(r.format, r.args...)
	}
	ps.records = ps.records[:0]
}
