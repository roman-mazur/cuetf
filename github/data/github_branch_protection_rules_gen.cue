package data

#github_branch_protection_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_branch_protection_rules")
	close({
		id?:         string
		repository!: string
		rules?: [...close({
			pattern?: string
		})]
	})
}
