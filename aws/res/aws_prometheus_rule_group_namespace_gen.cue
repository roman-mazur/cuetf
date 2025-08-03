package res

#aws_prometheus_rule_group_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_rule_group_namespace")
	close({
		arn?:    string
		data!:   string
		id?:     string
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		workspace_id!: string
	})
}
