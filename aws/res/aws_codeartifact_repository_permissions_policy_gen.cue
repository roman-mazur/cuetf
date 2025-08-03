package res

#aws_codeartifact_repository_permissions_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeartifact_repository_permissions_policy")
	close({
		domain!:          string
		domain_owner?:    string
		id?:              string
		policy_document!: string
		policy_revision?: string
		region?:          string
		repository!:      string
		resource_arn?:    string
	})
}
