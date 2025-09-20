package res

#azurerm_sentinel_data_connector_aws_cloud_trail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_data_connector_aws_cloud_trail")
	close({
		timeouts?:                   #timeouts
		aws_role_arn!:               string
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
