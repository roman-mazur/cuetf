package data

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
		region?:         string
		mesh_owner?:     string
		name!:           string
		resource_owner?: string
		spec?: [...close({
			provider?: [...close({
				virtual_node?: [...close({
					virtual_node_name?: string
				})]
				virtual_router?: [...close({
					virtual_router_name?: string
				})]
			})]
		})]
		tags?: [string]: string
	})
}
