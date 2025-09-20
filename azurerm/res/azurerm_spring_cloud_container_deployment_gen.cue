package res

import "list"

#azurerm_spring_cloud_container_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_container_deployment")
	close({
		addon_json?: string
		application_performance_monitoring_ids?: [...string]
		arguments?: [...string]
		commands?: [...string]
		environment_variables?: [string]: string
		id?: string
		quota?: matchN(1, [#quota, list.MaxItems(1) & [...#quota]])
		image!:               string
		timeouts?:            #timeouts
		instance_count?:      number
		language_framework?:  string
		name!:                string
		server!:              string
		spring_cloud_app_id!: string
	})

	#quota: close({
		cpu?:    string
		memory?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
