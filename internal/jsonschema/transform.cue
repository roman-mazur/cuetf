package jsonschema

import (
	"list"
	"github.com/roman-mazur/cuetf"
)

// #SchemaTransform can be used to tranform the Terraform provider schema document into a an equivalent JSON Schema.
#SchemaTransform: {
	#block: _
	#name:  string

	"$schema": "https://json-schema.org/draft/2020-12/schema"
	"$id":     "https://github.com/roman-mazur/cuetf/schema/\(#name)"

	let b = #block
	(#blockTransform & {#ref: "#", #block: b}).out
}

// Transform Terraform block representation into an object schema.
#blockTransform: {
	// #ref is the JSON pointer to this block's schema, like "#/$defs/foo".
	#ref:   string
	#block: _

	// Within the struct literals below, #ref would refer to their own field.
	let ref = #ref

	out: {
		type: "object"

		properties: {
			if #block.attributes != _|_ {
				for name, info in #block.attributes if (info.deprecated & true) == _|_ {
					if info.type != _|_ {
						(name): (#fieldTransform & {#type: info.type}).out
					}
					if info.nested_type != _|_ {
						_#x: "nested_block_\(name)": (#blockTransform & {#block: {
							attributes: info.nested_type.attributes
							block_types: {}
						}}).out
						(name): (#nestingTransform & {
							#nest: info.nested_type
							#def:  _#x["nested_block_\(name)"]
						}).out
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
						#def: "$ref": "\(ref)/$defs/\(name)"
					}).out
				}
			}
		}

		"$defs": {
			if #block.block_types != _|_ {
				for name, info in #block.block_types {
					(name): (#blockTransform & {#block: info.block, #ref: "\(ref)/$defs/\(name)"}).out
				}
			}
		}

		#requiredAttributes: [...string]
		#requiredBlocks: [...string]
		if #block.attributes != _|_ {
			#requiredAttributes: [for name, info in #block.attributes if (info.required & true) != _|_ {name}]
		}
		if #block.block_types != _|_ {
			#requiredBlocks: [for name, info in #block.block_types if (info.min_items & >0) != _|_ {name}]
		}
		required: list.Concat([#requiredAttributes, #requiredBlocks])

		additionalProperties: false
	}

	#nestingTransform: {
		#nest: cuetf.nestable & {...}
		#def: _

		out: {
			if #nest.nesting_mode == "single" {
				#def
			}

			if #nest.nesting_mode == "map" {
				type:                 "object"
				additionalProperties: #def
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
	#type!: cuetf.#attr.#primitive
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
	dynamic: ["number", "string", "boolean", "null", "array", "object"]
}
