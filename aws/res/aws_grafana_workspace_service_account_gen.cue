package res

#aws_grafana_workspace_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_grafana_workspace_service_account")
	grafana_role!:       string
	id?:                 string
	name!:               string
	service_account_id?: string
	workspace_id!:       string
}
