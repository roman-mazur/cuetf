package res

import "list"

#azurerm_spring_cloud_java_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_java_deployment")
	close({
		quota?: matchN(1, [#quota, list.MaxItems(1) & [...#quota]])
		environment_variables?: [string]: string
		id?:                  string
		instance_count?:      number
		jvm_options?:         string
		name!:                string
		runtime_version?:     string
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
