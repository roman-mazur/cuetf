package res

#aws_ecrpublic_repository_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecrpublic_repository_policy")
	id?:             string
	policy:          string
	registry_id?:    string
	repository_name: string
}
