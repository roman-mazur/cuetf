package res

#aws_grafana_workspace_service_account_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_grafana_workspace_service_account_token")
	close({
		created_at?: string
		expires_at?: string
		id?:         string
		key?:        string
		name!:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		seconds_to_live!:          number
		service_account_id!:       string
		service_account_token_id?: string
		workspace_id!:             string
	})
}
