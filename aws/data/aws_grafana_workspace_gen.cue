package data

#aws_grafana_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_grafana_workspace")
	close({
		account_access_type?: string
		arn?:                 string
		authentication_providers?: [...string]
		created_date?: string
		data_sources?: [...string]
		description?:     string
		endpoint?:        string
		grafana_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		id?:                string
		last_updated_date?: string
		name?:              string
		notification_destinations?: [...string]
		organization_role_name?: string
		organizational_units?: [...string]
		permission_type?:           string
		role_arn?:                  string
		saml_configuration_status?: string
		stack_set_name?:            string
		status?:                    string
		tags?: [string]: string
		workspace_id!: string
	})
}
