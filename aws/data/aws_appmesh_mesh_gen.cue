package data

#aws_appmesh_mesh: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_appmesh_mesh")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_owner?:        string
		name!:              string
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
