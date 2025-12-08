package res

#azurerm_sentinel_data_connector_aws_s3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_data_connector_aws_s3")
	close({
		timeouts?:                   #timeouts
		aws_role_arn!:               string
		destination_table!:          string
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		sqs_urls!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
