package res

import "list"

#azurerm_stream_analytics_output_servicebus_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_output_servicebus_topic")
	close({
		authentication_mode?: string
		id?:                  string
		name!:                string
		property_columns?: [...string]
		resource_group_name!:  string
		servicebus_namespace!: string
		serialization?: matchN(1, [#serialization, list.MaxItems(1) & [_, ...] & [...#serialization]])
		shared_access_policy_key?:  string
		shared_access_policy_name?: string
		timeouts?:                  #timeouts
		stream_analytics_job_name!: string
		system_property_columns?: [string]: string
		topic_name!: string
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
