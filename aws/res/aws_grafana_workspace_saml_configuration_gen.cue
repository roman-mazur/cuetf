package res

#aws_grafana_workspace_saml_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_grafana_workspace_saml_configuration")
	admin_role_values?: [...string]
	allowed_organizations?: [...string]
	editor_role_values: [...string]
	email_assertion?:         string
	groups_assertion?:        string
	id?:                      string
	idp_metadata_url?:        string
	idp_metadata_xml?:        string
	login_assertion?:         string
	login_validity_duration?: number
	name_assertion?:          string
	org_assertion?:           string
	role_assertion?:          string
	status?:                  string
	workspace_id:             string
	timeouts?:                #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
