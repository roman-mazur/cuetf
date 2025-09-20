package data

#azurerm_databricks_workspace_private_endpoint_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_databricks_workspace_private_endpoint_connection")
	close({
		timeouts?: #timeouts
		connections?: [...close({
			action_required?:               string
			description?:                   string
			name?:                          string
			status?:                        string
			workspace_private_endpoint_id?: string
		})]
		id?:                  string
		private_endpoint_id!: string
		workspace_id!:        string
	})

	#timeouts: close({
		read?: string
	})
}
