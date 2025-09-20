package res

import "list"

#azurerm_spring_cloud_build_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_build_deployment")
	close({
		quota?: matchN(1, [#quota, list.MaxItems(1) & [...#quota]])
		addon_json?: string
		application_performance_monitoring_ids?: [...string]
		build_result_id!: string
		environment_variables?: [string]: string
		id?:                  string
		instance_count?:      number
		name!:                string
		spring_cloud_app_id!: string
		timeouts?:            #timeouts
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
