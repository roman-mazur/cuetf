package data

#github_organization_ip_allow_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_organization_ip_allow_list")
	id?: string
	ip_allow_list?: [...{
		allow_list_value?: string
		created_at?:       string
		id?:               string
		is_active?:        bool
		name?:             string
		updated_at?:       string
	}]
}
