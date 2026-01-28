package res

#aws_glue_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glue_schema")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		compatibility!:         string
		data_format!:           string
		description?:           string
		id?:                    string
		latest_schema_version?: number
		next_schema_version?:   number
		registry_arn?:          string
		registry_name?:         string
		schema_checkpoint?:     number
		schema_definition!:     string
		schema_name!:           string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
