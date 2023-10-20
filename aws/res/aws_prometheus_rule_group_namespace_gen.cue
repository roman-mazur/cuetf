package res

#aws_prometheus_rule_group_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_prometheus_rule_group_namespace")
	data:         string
	id?:          string
	name:         string
	workspace_id: string
}
