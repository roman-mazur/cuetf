package res

import "list"

#aws_appmesh_virtual_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_virtual_service")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_name!:         string
		mesh_owner?:        string
		name!:              string
		region?:            string
		resource_owner?:    string
		spec?: matchN(1, [#spec, list.MaxItems(1) & [_, ...] & [...#spec]])
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#spec: close({
		provider?: matchN(1, [_#defs."/$defs/spec/$defs/provider", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/provider"]])
	})

	_#defs: "/$defs/spec/$defs/provider": close({
		virtual_node?: matchN(1, [_#defs."/$defs/spec/$defs/provider/$defs/virtual_node", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/provider/$defs/virtual_node"]])
		virtual_router?: matchN(1, [_#defs."/$defs/spec/$defs/provider/$defs/virtual_router", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/provider/$defs/virtual_router"]])
	})

	_#defs: "/$defs/spec/$defs/provider/$defs/virtual_node": close({
		virtual_node_name!: string
	})

	_#defs: "/$defs/spec/$defs/provider/$defs/virtual_router": close({
		virtual_router_name!: string
	})
}
