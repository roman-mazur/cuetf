package res

#aws_glue_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_resource_policy")
	enable_hybrid?: string
	id?:            string
	policy!:        string
}
