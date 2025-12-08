package data

#azurerm_eventgrid_system_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_eventgrid_system_topic")
	close({
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:               string
		metric_arm_resource_id?: string
		metric_resource_id?:     string
		name!:                   string
		resource_group_name!:    string
		source_arm_resource_id?: string
		source_resource_id?:     string
		timeouts?:               #timeouts
		tags?: [string]: string
		topic_type?: string
	})

	#timeouts: close({
		read?: string
	})
}
