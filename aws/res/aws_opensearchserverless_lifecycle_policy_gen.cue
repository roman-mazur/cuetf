package res

#aws_opensearchserverless_lifecycle_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearchserverless_lifecycle_policy")
	description?:    string
	id?:             string
	name!:           string
	policy!:         string
	policy_version?: string
	type!:           string
}
