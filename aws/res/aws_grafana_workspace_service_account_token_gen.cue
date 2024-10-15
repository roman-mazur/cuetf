package res

#aws_grafana_workspace_service_account_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_grafana_workspace_service_account_token")
	created_at?:               string
	expires_at?:               string
	id?:                       string
	key?:                      string
	name!:                     string
	seconds_to_live!:          number
	service_account_id!:       string
	service_account_token_id?: string
	workspace_id!:             string
}
