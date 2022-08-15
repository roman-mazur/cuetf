package cuetf

import "text/template"

#tBlockAttr: {
	prefix: string // Prefix for non-primitive definitions.
	input: #block

  #primFields: [string]: { type: #attr.#primitive, optional: bool }
	output: close({
		primitives: #fieldsDef & #primFields
		complex: #fieldsDef
		complexDefs: [string]: #complexDefSchema
	})

	output: {
		for name, def in input.attributes {
			let typeDef = {
				type:     string
				optional: def.optional | !def.required
			}
			if (def.type & #attr.#primitive) != _|_ {
				primitives: "\(name)": typeDef & {type: def.type}
			}
			if (def.type & #attr.#complexDef) != _|_ {
				let n = "\(prefix)_\(name)"
				complex: "\(name)": typeDef & {type: n}
				complexDefs: (#tComplexDef[def.type[0]] & {name: n, input: def.type[1]}).output
			}
		}

		for name, def in input.block_types {
			let n = "\(prefix)_\(name)"
			complex: "\(name)": {type: n, optional: true}
			let h = #tBlockAttr & { prefix: n, input: def.block }
			complexDefs: "\(n)": {
				cueType: "struct"
				fields: {
					h.output.primitives
				}
				//h.output.complex
			}
//			complexDefs: h.output.complexDefs
		}
	}
	code: template.Execute("""
	#{{.name}}: {
		{{range $fn, $ft := .data.primitives}}
		{{$fn}}{{if $ft.optional}}?{{end}}: {{$ft.type}}
		{{end}}
		{{range $fn, $ft := .data.complex}}
		{{$fn}}{{if $ft.optional}}?{{end}}: #{{$ft.type}}
		{{end}}
	}
	{{range $name, $info := .data.complexDefs}}
	{{if eq $info.cueType "list"}}#{{$name}}: [...{{$info.element}}]{{end}}
	{{if eq $info.cueType "map"}}#{{$name}}: [string]: {{$info.element}}{{end}}
	{{if eq $info.cueType "struct"}}
	#{{$name}}: {
		{{range $fn, $ft := $info.fields}}
		{{$fn}}{{if $ft.optional}}?{{end}}: {{$ft.type}}
		{{end}}
	}
	{{end}}
	{{end}}
	""", {name: prefix, data: output})
}

// #tComplexDef provides transformations for the complex types like list or object.
#tComplexDef: [#attr.#complexType]: output: [string]: #complexDefSchema
#fieldsDef: [string]: { type: string, optional: bool | *false }
#complexDefSchema: {cueType: "list" | "map", element: string} | {cueType: "struct", fields: #fieldsDef}

for t, v in #_stdComplex {
	#tComplexDef: "\(t)": v
}

// #_stdComplex provides a std transformation for lists, sets, and maps, referring to the element type.
#_stdComplex: [type=#attr.#complexType]: {
	name:  string
	input: _
	output: {
		if (input & #attr.#primitive) != _|_ {
			"\(name)": {
				cueType: _cueMap[type]
				element: input
			}
		}

		if (input & #attr.#complexDef) != _|_ {
			let n = "\(name)_\(input[0])"
			"\(name)": {
				cueType: _cueMap[type]
				element: "#\(n)"
			}
			let i = input
			(#tComplexDef[input[0]] & {name: n, input: i[1]}).output
		}
	}
}

#_stdComplex: set:  _ // TODO: Add more constraint for the sets.
#_stdComplex: list: _
#_stdComplex: map:  _

_cueMap: {// From TF type to CUE.
	list: "list"
	set:  "list"
	map:  "map" // Not really a CUE type, but impacts how exactly the output CUE code is produced.
}

// #tComplexDef.object transforms a TF object into a CUE struct.
#tComplexDef: object: {
	name: string
	input: [string]: _

	_h: {
		extraDefs: [string]: _

		for fn, ft in input {
			if (ft & #attr.#primitive) != _|_ {
				mainFields: "\(fn)": {type: ft}
			}
			if (ft & #attr.#complexDef) != _|_ {
				let n = "\(name)_\(fn)"
				mainFields: "\(fn)": {type: "#\(n)"}
				extraDefs: (#tComplexDef[ft[0]] & {name: n, input: ft[1]}).output
			}
		}
	}

	output: {
		"\(name)": {
			cueType: "struct"
			fields:  _h.mainFields
		}
		_h.extraDefs
	}
}

_netstingModeMap: {
	single: "object"
	list: "list"
	set: "set"
}
