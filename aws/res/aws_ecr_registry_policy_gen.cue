package res

#aws_ecr_registry_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_registry_policy")
	id?:          string
	policy!:      string
	registry_id?: string
}
