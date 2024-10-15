package res

import "list"

#aws_appmesh_mesh: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_mesh")
	arn?:               string
	created_date?:      string
	id?:                string
	last_updated_date?: string
	mesh_owner?:        string
	name!:              string
	resource_owner?:    string
	tags?: [string]:     string
	tags_all?: [string]: string
	spec?: #spec | list.MaxItems(1) & [...#spec]

	#spec: {
		egress_filter?: #spec.#egress_filter | list.MaxItems(1) & [...#spec.#egress_filter]
		service_discovery?: #spec.#service_discovery | list.MaxItems(1) & [...#spec.#service_discovery]

		#egress_filter: type?: string

		#service_discovery: ip_preference?: string
	}
}
