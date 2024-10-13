package data

#aws_opensearchserverless_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearchserverless_security_policy")
	created_date?:       string
	description?:        string
	id?:                 string
	last_modified_date?: string
	name!:               string
	policy?:             string
	policy_version?:     string
	type!:               string
}
