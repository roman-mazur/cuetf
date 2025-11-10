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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		spec!: matchN(1, [#spec, list.MaxItems(1) & [_, ...] & [...#spec]])
		mesh_owner?:     string
		name!:           string
		resource_owner?: string
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
