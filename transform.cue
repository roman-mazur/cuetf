package cuetf

import "text/template"

#tBlockAttr: {
	prefix: string // Prefix for non-primitive definitions.
	input:  #block

	output: close({
		primitives: #fieldsDef
		primitives: [string]: type: #attr.#primitive

		complex: #fieldsDef
		complexDefs: [string]: #complexDefSchema
	})

	output: {
		for name, def in input.attributes if !def.computed || def.optional || def.required {
			if (def.type & #attr.#primitive) != _|_ {
				primitives: (name): {
					type:     def.type
					optional: def.optional
					required: def.required
				}
			}

			if (def.type & #attr.#complexDef) != _|_ {
				let n = "\(prefix)_\(name)"
				complex: (name): {
					type:     "#\(n)"
					optional: def.optional
					required: def.required
				}
				complexDefs: (#tComplexDef[def.type[0]] & {name: n, input: def.type[1]}).output
			}
		}

		for name, def in input.block_types {
			let n = "\(prefix)_\(name)"
			complex: "\(name)": {type: n, optional: true}
			let h = #tBlockAttr & {prefix: n, input: def.block}
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
		{{- define "field"}}{{.name}}{{if .optional}}?{{end}}{{if .required}}!{{end}}: {{.type}}{{end}}
		{{- define "list"}}{{.name}}{{if .optional}}?{{end}}{{if .required}}!{{end}}: [...{{.element}}]{{end}}
		{{- define "map"}}{{.name}}{{if .optional}}?{{end}}{{if .required}}!{{end}}: [string]: {{.element}}{{end}}
		{{- define "struct"}}
		{{.name}}: {
			{{- range .fields}}
			{{template "field" .}}
			{{- end}}
		}
		{{end}}
		#{{.name}}: {
			{{- range .data.primitives}}
			{{template "field" .}}
			{{- end}}

			{{- range .data.complex}}
			{{template "field" .}}
			{{- end}}
		}

		{{range .data.complexDefs}}
		{{- if eq .cueType "list"}}{{template "list" .}}{{end}}
		{{- if eq .cueType "map"}}{{template "map" .}}{{end}}
		{{- if eq .cueType "struct"}}{{template "struct" .}}{{end}}
		{{end}}
		""", {name: prefix, data: output})
}

// #tComplexDef provides transformations for the complex types like list or object.
#tComplexDef: [#attr.#complexType]: output: [fName=string]: #complexDefSchema & {name: "#\(fName)"}

#complexDefSchema: {name: string} & ({cueType: "list" | "map", element: string} | {cueType: "struct", fields: #fieldsDef})

#fieldsDef: [fName=string]: #fieldInfo & {name: fName}

#fieldInfo: {
	name:     string
	type:     string
	optional: bool | *false
	required: bool | *false

	contradiction: (optional && required) & false
}

for t, v in #_stdComplex {
	#tComplexDef: "\(t)": v
}

// #_stdComplex provides a std transformation for lists, sets, and maps, referring to the element type.
#_stdComplex: [type=#attr.#complexType]: {
	name:  string
	input: _
	output: {
		if (input & #attr.#primitive) != _|_ {
			(name): {
				cueType: _cueMap[type]
				element: input
			}
		}

		if (input & #attr.#complexDef) != _|_ {
			let n = "\(name)_\(input[0])"
			(name): {
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

_nestingModeMap: {
	single: "object"
	list:   "list"
	set:    "set"
}
