package res

import "list"

#aws_appmesh_mesh: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appmesh_mesh")
	arn?:               string
	created_date?:      string
	id?:                string
	last_updated_date?: string
	mesh_owner?:        string
	name:               string
	resource_owner?:    string
	tags?: [string]: string
	tags_all?: [string]: string
	spec?: #spec | list.MaxItems(1) & [...#spec]

	#spec: {
		egress_filter?: #spec.#egress_filter | list.MaxItems(1) & [...#spec.#egress_filter]

		#egress_filter: type?: string
	}
}
