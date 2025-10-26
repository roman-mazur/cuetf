package clog

import (
	"bytes"
	"fmt"
	"log"
	"strings"
	"sync"
	"testing"
)

func TestNew(t *testing.T) {
	const result = `start provider
done provider
start data source 1
start data source 2
start data source 3
start data source 4
start data source 5
start resource 1
start resource 2
start resource 3
start resource 4
start resource 5
`

	for range 50 {
		var (
			out testOut
			wg  sync.WaitGroup
		)
		l := New(out.Logf)
		wg.Go(func() {
			l.LogPart(PartProvider)("start provider")
			l.LogPart(PartProvider)("done provider")
			l.Finish(PartProvider)
		})
		wg.Go(func() {
			logf := l.LogPart(PartResources)
			for i := range 5 {
				logf("start resource %d", i+1)
			}
			l.Finish(PartResources)
		})
		wg.Go(func() {
			logf := l.LogPart(PartDataSources)
			for i := range 5 {
				logf("start data source %d", i+1)
			}
			l.Finish(PartDataSources)
		})

		wg.Wait()
		if res := out.String(); res != result {
			log.Fatal("bad output: ", res)
		}
	}
}

type testOut bytes.Buffer

func (to *testOut) Logf(format string, args ...any) {
	sb := (*bytes.Buffer)(to)
	sb.WriteString(fmt.Sprintf(format, args...))
	if !strings.HasSuffix(sb.String(), "\n") {
		sb.WriteString("\n")
	}
}

func (to *testOut) String() string {
	return (*bytes.Buffer)(to).String()
}
