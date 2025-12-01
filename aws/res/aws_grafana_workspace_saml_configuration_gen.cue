package res

#aws_grafana_workspace_saml_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_grafana_workspace_saml_configuration")
	close({
		admin_role_values?: [...string]
		allowed_organizations?: [...string]
		editor_role_values!: [...string]
		email_assertion?:  string
		groups_assertion?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		id?:                      string
		idp_metadata_url?:        string
		timeouts?:                #timeouts
		idp_metadata_xml?:        string
		login_assertion?:         string
		login_validity_duration?: number
		name_assertion?:          string
		org_assertion?:           string
		role_assertion?:          string
		status?:                  string
		workspace_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
