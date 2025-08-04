package res

#github_enterprise_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_enterprise_organization")
	close({
		admin_logins!: [...string]
		billing_email!: string
		database_id?:   number
		description?:   string
		display_name?:  string
		enterprise_id!: string
		id?:            string
		name!:          string
	})
}
