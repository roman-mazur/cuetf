package res

import "list"

#azurerm_stream_analytics_output_servicebus_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_output_servicebus_queue")
	close({
		authentication_mode?: string
		id?:                  string
		name!:                string
		property_columns?: [...string]
		queue_name!:          string
		resource_group_name!: string
		serialization?: matchN(1, [#serialization, list.MaxItems(1) & [_, ...] & [...#serialization]])
		servicebus_namespace!:      string
		shared_access_policy_key?:  string
		timeouts?:                  #timeouts
		shared_access_policy_name?: string
		stream_analytics_job_name!: string
		system_property_columns?: [string]: string
	})

	#serialization: close({
		encoding?:        string
		field_delimiter?: string
		format?:          string
		type!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
