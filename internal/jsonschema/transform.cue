package jsonschema

import (
	"list"
	"path"
	"github.com/roman-mazur/cuetf/internal/tf"
)

// #SchemaTransform can be used to tranform the Terraform provider schema document into a an equivalent JSON Schema.
#SchemaTransform: {
	#block: tf.#block
	#name:  string

	"$schema": "https://json-schema.org/draft/2020-12/schema"
	"$id":     "https://github.com/roman-mazur/cuetf/schema/\(#name)"

	#blockTransform & {#path: []}
}

// Transform Terraform block representation into an object schema.
#blockTransform: {
	#path: [...string]
	#block: tf.#block

	type: "object"

	#ref: {
		#name: string
		"#/\(path.Join([for el in list.Concat(#path, [#name]) {"$defs/\(el)"}]))"
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
			(name): list.Concat(#path, [name])
		}
	}

	"$defs": {
		for name, info in #block.block_types {
			(name): #blockTransform & {#block: info.block, #path: _defPaths[name]}
		}
	}

	required: [for name, info in #block.attributes if info.required {name}]

	additionalProperties: false
}

// Helper to transform into an object property.
#fieldTransform: {
	#type: "number" | "string"
	type:  #type
} | {
	#type: "bool"
	type:  "boolean"
} | {
	#type: ["list", _]
	type: "array"
	_child: #type[1]
	items: #fieldTransform & {#type: _child}
} | {
	#type: ["set", _]
	type: "array"
	uniqueItems: true
	_child: #type[1]
	items: #fieldTransform & {#type: _child}
} | {
	#type: ["map", _]
	type: "object"
	_child: #type[1]
	additionalProperties: #fieldTransform & {#type: _child}
} | {
	#type: ["object", _]
	type: "object"
	additionalProperties: false
	_child: #type[1]
	properties: {
		for key, fType in _child {
			(key): #fieldTransform & {#type: fType}
		}
	}
}
