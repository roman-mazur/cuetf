package res

#aws_glue_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_schema")
	close({
		arn?:                   string
		compatibility!:         string
		data_format!:           string
		description?:           string
		id?:                    string
		latest_schema_version?: number
		next_schema_version?:   number
		region?:                string
		registry_arn?:          string
		registry_name?:         string
		schema_checkpoint?:     number
		schema_definition!:     string
		schema_name!:           string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
