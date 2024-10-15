package res

#aws_prometheus_alert_manager_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_alert_manager_definition")
	definition!:   string
	id?:           string
	workspace_id!: string
}
