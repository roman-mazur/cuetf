package res

import "list"

#azurerm_eventgrid_system_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventgrid_system_topic")
	close({
		id?:                     string
		location!:               string
		metric_arm_resource_id?: string
		metric_resource_id?:     string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!:                string
		resource_group_name!: string
		source_resource_id?:  string
		tags?: [string]: string
		topic_type!: string
		timeouts?:   #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
