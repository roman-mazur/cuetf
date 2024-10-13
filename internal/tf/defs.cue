package tf

#ProviderSchema: {
	provider: #type
	resource_schemas: [string]:    #type
	data_source_schemas: [string]: #type
}

#type: {
	version: uint
	block:   #block
}

documented: {
	description?:     string
	description_kind: "plain" | "markdown"
}

_recDepth: [0, 1, 2, 3, 4, 5]

#attr: {
	#primitive:   "string" | "number" | "bool"
	#complexType: "object" | "list" | "map" | "set"
	#complexDef: [#complexType, _]

	_levels: [// Implementation of a bounded recursion.
		for i in _recDepth {
			{
				if i == 0 {
					#_prev: #primitive
				}
				if i > 0 {
					#_prev: _levels[i-1].#variant
				}

				#fields: [string]: _levels[i].#_prev
				#object: ["object", #fields]
				#list: ["list", _levels[i].#_prev]
				#map: ["map", _levels[i].#_prev]
				#set: ["set", _levels[i].#_prev]

				#variant: _levels[i].#_prev | #object | #list | #map | #set
			}
		},
	]

	// XXX: Unifying with the recursive defs takes too long.
	//#type: _levels[len(_levels)-1].#variant
	#type: #primitive | #complexDef
}

#block: documented & {
	deprecated: bool | *false
	attributes: [name=string]:  #attributeDescription
	block_types: [name=string]: #blockTypeDescription
}

#attributeDescription: documented & {
	optional:   bool | *false
	required:   bool | *false
	computed:   bool | *false
	sensitive:  bool | *false
	deprecated: bool | *false

	type: #attr.#type
}

#blockTypeDescription: {
	nesting_mode: "set" | "list" | "single"
	block:        #block
	max_items?:   uint
	min_items?:   uint
}
