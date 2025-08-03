package data

#aws_workspaces_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspaces_image")
	close({
		description?:           string
		id?:                    string
		image_id!:              string
		name?:                  string
		operating_system_type?: string
		region?:                string
		required_tenancy?:      string
		state?:                 string
	})
}
