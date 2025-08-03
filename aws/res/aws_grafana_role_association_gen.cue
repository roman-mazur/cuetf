package res

#aws_grafana_role_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_grafana_role_association")
	close({
		group_ids?: [...string]
		timeouts?: #timeouts
		id?:       string
		region?:   string
		role!:     string
		user_ids?: [...string]
		workspace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
