package jsonschema

import (
	"path"
	"rmazur.io/cuetf/internal/tf"
)

// #SchemaTransform can be used to tranform the Terraform provider schema document into a an equivalent JSON Schema.
#SchemaTransform: {
	#block: tf.#block
	#name:  string

	"$schema": "https://json-schema.org/draft/2020-12/schema"
	"$id":     "https://rmazur.io/cuetf/schema/\(#name)"

	#blockTransform & {#path: []}
}

// Transform Terraform block representation into an object schema.
#blockTransform: {
	#path: [...string]
	#block: tf.#block

	type: "object"

	#ref: {
		#name: string
		"#/\(path.Join([ for el in #path + [#name] {"$defs/\(el)"}]))"
	}

	properties: {
		for name, info in #block.attributes if !info.deprecated {
			(#fieldTransform & {#name: name, #type: info.type}).out
		}

		for name, info in #block.block_types {
			(name): {
				#defRef: "$ref": {#ref, #name: name}

				if info.nesting_mode == "single" {
					#defRef
				}

				if info.nesting_mode == "list" || info.nesting_mode == "set" {
					"oneOf": [
						#defRef,
						{
							type:  "array"
							items: #defRef
							if info.min_items != _|_ {
								minItems: info.min_items
							}
							if info.max_items != _|_ {
								maxItems: info.max_items
							}
						},
					]
				}
			}
		}
	}

	_defPaths: {
		for name, _ in #block.block_types {
			(name): #path + [name]
		}
	}

	"$defs": {
		for name, info in #block.block_types {
			(name): #blockTransform & {#block: info.block, #path: _defPaths[name]}
		}
	}

	required: [ for name, info in #block.attributes if info.required {name}]

	additionalProperties: false
}

// Helper to transform into an object property.
#fieldTransform: {
	#name: string
	#type: tf.#attr.#type

	out: (#name): {
		if (#type & tf.#attr.#primitive) != _|_ {
			type: _primitivesMap[#type]
		}
		if (#type & tf.#attr.#complexDef) != _|_ {
			#complexTransform & {#def: #type}
		}
	}
}

// Helper to transform Terraform objects, lists, maps.
#complexTransform: {
	#def: tf.#attr.#complexDef

	if #def[0] == "object" {
		type:                 "object"
		additionalProperties: false
		properties: {
			for name, fType in #def[1] {
				(#fieldTransform & {#name: name, #type: fType}).out
			}
		}
	}

	if #def[0] == "list" || #def[0] == "set" {
		type: "array"
		(#fieldTransform & {#name: "items", #type: #def[1]}).out
	}

	if #def[0] == "map" {
		type: "object"
		(#fieldTransform & {#name: "additionalProperties", #type: #def[1]}).out
	}
}

// Map primitives from Terraform to JSON Schema values.
_primitivesMap: {
	number: "number"
	string: "string"
	"bool": "boolean"
}
