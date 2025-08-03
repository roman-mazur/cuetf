package res

#aws_grafana_workspace_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_grafana_workspace_api_key")
	close({
		id?:              string
		key?:             string
		key_name!:        string
		key_role!:        string
		region?:          string
		seconds_to_live!: number
		workspace_id!:    string
	})
}
