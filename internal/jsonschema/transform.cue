package jsonschema

import (
	"list"
	"path"
	"github.com/roman-mazur/cuetf/internal/tf"
)

// #SchemaTransform can be used to tranform the Terraform provider schema document into a an equivalent JSON Schema.
#SchemaTransform: {
	#block: _
	#name:  string

	"$schema": "https://json-schema.org/draft/2020-12/schema"
	"$id":     "https://github.com/roman-mazur/cuetf/schema/\(#name)"

	let b = #block
	(#blockTransform & {#path: [], #block: b}).out
}

// Transform Terraform block representation into an object schema.
#blockTransform: {
	#path: [...string]
	#block: _

	out: {
		type: "object"

		#refComposer: {
			#name: string
			out:   "#/\(path.Join([for el in list.Concat([#path, [#name]]) {"$defs/\(el)"}]))"
		}

		properties: {
			if #block.attributes != _|_ {
				for name, info in #block.attributes if info.deprecated == _|_ {
					if info.type != _|_ {
						(name): (#fieldTransform & {#type: info.type}).out
					}
					if info.nested_type != _|_ {
						#: "nested_\(name)": #nestingTransform & {
							#nest: info.nested_type
							#def: (#blockTransform & {#block: {
								attributes: info.nested_type.attributes
								block_types: {}
							}}).out
						}
						(name): properties.#["nested_\(name)"].out
					}

					if info.description != _|_ {
						(name): description: info.description
					}
				}
			}

			if #block.block_types != _|_ {
				for name, info in #block.block_types {
					(name): (#nestingTransform & {
						#nest: info
						#def: "$ref": (#refComposer & {#name: name}).out
					}).out
				}
			}
		}

		_defPaths: {
			if #block.block_types != _|_ {
				for name, _ in #block.block_types {
					(name): list.Concat([#path, [name]])
				}
			}
		}

		"$defs": {
			if #block.block_types != _|_ {
				for name, info in #block.block_types {
					(name): (#blockTransform & {#block: info.block, #path: _defPaths[name]}).out
				}
			}
		}

		if #block.attributes != _|_ {
			required: [for name, info in #block.attributes if info.required != _|_ {name}]
		}

		additionalProperties: false
	}

	#nestingTransform: {
		#nest: tf.nestable & {...}
		#def: _

		out: {
			if #nest.nesting_mode == "single" {
				#def
			}

			if #nest.nesting_mode == "list" || #nest.nesting_mode == "set" {
				"oneOf": [
					#def,
					{
						type:  "array"
						items: #def
						if #nest.min_items != _|_ {
							minItems: #nest.min_items
						}
						if #nest.max_items != _|_ {
							maxItems: #nest.max_items
						}
					},
				]
			}
		}
	}
}

// Helper to transform into an object property.
#fieldTransform: {
	#type!: tf.#attr.#primitive
	out: type: _primitivesMap[#type]
} | {
	#type!: ["object", _]
	out: {
		type:                 "object"
		additionalProperties: false
		properties: {
			for name, fType in #type[1] {
				(name): (#fieldTransform & {#type: fType}).out
			}
		}
	}
} | {
	#type!: ["map", _]
	out: {
		type: "object"
		let value = #type[1]
		additionalProperties: (#fieldTransform & {#type: value}).out
	}
} | {
	#type!: ["set", _]
	out: {
		type: "array"
		let value = #type[1]
		items: (#fieldTransform & {#type: value}).out
	}
} | {
	#type!: ["list", _]
	out: {
		type: "array"
		let value = #type[1]
		items: (#fieldTransform & {#type: value}).out
	}
}

// Map primitives from Terraform to JSON Schema values.
_primitivesMap: {
	number: "number"
	string: "string"
	"bool": "boolean"
}
