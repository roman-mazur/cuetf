package res

#github_enterprise_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_enterprise_organization")
	admin_logins: [...string]
	billing_email: string
	description?:  string
	display_name?: string
	enterprise_id: string
	id?:           string
	name:          string
}
