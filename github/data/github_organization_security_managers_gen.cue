package data

#github_organization_security_managers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_security_managers")
	close({
		id?: string
		teams?: [...close({
			id?:         number
			name?:       string
			permission?: string
			slug?:       string
		})]
	})
}
