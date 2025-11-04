// Package tf profides a schema for the output of
//		terraform providers schema -json
package tf

#ProviderSchema: {
	provider: #type
	resource_schemas: [string]:    #type
	data_source_schemas: [string]: #type

	// TODO: add support. Used in the AWS provider.
	ephemeral_resource_schemas: [string]: #type

	// Unused properties below.

	// Used mainly for imports.
	resource_identity_schemas: [string]: _
	// Used by google provider.
	functions?: [string]: _
}

#type: {
	version: uint
	block:   #block
}

documented: {
	description?:     string
	description_kind: "plain" | "markdown"
}

#attr: {
	#primitive:   "string" | "number" | "bool" | "dynamic"
	#complexDef: ["object", {[string]: #type}] | ["list" | "map" | "set", #type]

	#type: #primitive | #complexDef
}

#block: documented & {
	deprecated: bool | *false
	attributes: [name=string]:   #attributeDescription
	block_types?: [name=string]: #blockTypeDescription
}

#attributeDescription: documented & _attrTypeOptions & {
	optional:   bool | *false
	required:   bool | *false
	computed:   bool | *false
	sensitive:  bool | *false
	deprecated: bool | *false
	write_only: bool | *false
}

_attrTypeOptions: {type: #attr.#type} | {
	nested_type: nestable & {
		attributes: [name=string]: #attributeDescription
	}
}

#blockTypeDescription: nestable & {
	block: #block
}

nestable: {
	nesting_mode: "set" | "list" | "single"
	max_items?:   uint
	min_items?:   uint
}
