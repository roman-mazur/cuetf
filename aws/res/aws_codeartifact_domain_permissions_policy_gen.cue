package res

#aws_codeartifact_domain_permissions_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codeartifact_domain_permissions_policy")
	domain!:          string
	domain_owner?:    string
	id?:              string
	policy_document!: string
	policy_revision?: string
	resource_arn?:    string
}
