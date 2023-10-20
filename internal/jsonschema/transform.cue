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
			(name): #fieldTransform & {#type: info.type}
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
	#type: tf.#attr.#primitive
	type:  _primitivesMap[#type]
} | {
	#type: tf.#attr.#complexDef
	_complexMap[#type[0]] & {#defs: #type[1]}
}

_complexMap: {
	object: {
			#defs: _
			type:                 "object"
			additionalProperties: false
			properties: {
				for name, fType in #defs {
					(name): #fieldTransform & {#type: fType}
				}
			}
	}

	map: {
			#defs: _
			type:                 "object"
			additionalProperties: #fieldTransform & {#type: #defs}
	}

	set: {
			#defs: _
			type:  "array"
			items: #fieldTransform & {#type: #defs}
	}

	list: {
			#defs: _
			type:  "array"
			items: #fieldTransform & {#type: #defs}
	}
}

// Map primitives from Terraform to JSON Schema values.
_primitivesMap: {
	number: "number"
	string: "string"
	"bool": "boolean"
}
