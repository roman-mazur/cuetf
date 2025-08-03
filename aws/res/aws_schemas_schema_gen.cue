package res

#aws_schemas_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_schemas_schema")
	close({
		arn?:           string
		content!:       string
		description?:   string
		id?:            string
		last_modified?: string
		name!:          string
		region?:        string
		registry_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!:                 string
		version?:              string
		version_created_date?: string
	})
}
