package data

#github_branch_protection_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_branch_protection_rules")
	id?:        string
	repository: string
	rules?: [...{
		pattern?: string
	}]
}
