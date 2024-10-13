package res

#aws_grafana_role_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_grafana_role_association")
	group_ids?: [...string]
	id?:   string
	role!: string
	user_ids?: [...string]
	workspace_id!: string
	timeouts?:     #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
