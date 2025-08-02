package data

#aws_appmesh_mesh: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_mesh")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_owner?:        string
		name!:              string
		region?:            string
		resource_owner?:    string
		spec?: [...close({
			egress_filter?: [...close({
				type?: string
			})]
			service_discovery?: [...close({
				ip_preference?: string
			})]
		})]
		tags?: [string]: string
	})
}
