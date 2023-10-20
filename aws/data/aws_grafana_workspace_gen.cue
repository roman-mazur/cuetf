package data

#aws_grafana_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_grafana_workspace")
	account_access_type?: string
	arn?:                 string
	authentication_providers?: [...string]
	created_date?: string
	data_sources?: [...string]
	description?:       string
	endpoint?:          string
	grafana_version?:   string
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
	workspace_id: string
}
