package res

import "list"

#aws_appmesh_mesh: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_mesh")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_owner?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		spec?: matchN(1, [#spec, list.MaxItems(1) & [...#spec]])
		resource_owner?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#spec: close({
		egress_filter?: matchN(1, [_#defs."/$defs/spec/$defs/egress_filter", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/egress_filter"]])
		service_discovery?: matchN(1, [_#defs."/$defs/spec/$defs/service_discovery", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/service_discovery"]])
	})

	_#defs: "/$defs/spec/$defs/egress_filter": close({
		type?: string
	})

	_#defs: "/$defs/spec/$defs/service_discovery": close({
		ip_preference?: string
	})
}
