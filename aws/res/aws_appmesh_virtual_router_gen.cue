package res

import "list"

#aws_appmesh_virtual_router: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_virtual_router")
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
		listener?: matchN(1, [_#defs."/$defs/spec/$defs/listener", [..._#defs."/$defs/spec/$defs/listener"]])
	})

	_#defs: "/$defs/spec/$defs/listener": close({
		port_mapping?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/port_mapping", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/listener/$defs/port_mapping"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/port_mapping": close({
		port!:     number
		protocol!: string
	})
}
