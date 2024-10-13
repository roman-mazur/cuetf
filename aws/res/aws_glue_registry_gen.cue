package res

#aws_glue_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_registry")
	arn?:           string
	description?:   string
	id?:            string
	registry_name!: string
	tags?: [string]:     string
	tags_all?: [string]: string
}
