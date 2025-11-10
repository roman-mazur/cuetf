package res

import "list"

#azurerm_stream_analytics_stream_input_eventhub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_stream_input_eventhub")
	close({
		authentication_mode?:          string
		eventhub_consumer_group_name?: string
		eventhub_name!:                string
		id?:                           string
		name!:                         string
		partition_key?:                string
		serialization!: matchN(1, [#serialization, list.MaxItems(1) & [_, ...] & [...#serialization]])
		resource_group_name!:       string
		servicebus_namespace!:      string
		timeouts?:                  #timeouts
		shared_access_policy_key?:  string
		shared_access_policy_name?: string
		stream_analytics_job_name!: string
	})

	#serialization: close({
		encoding?:        string
		field_delimiter?: string
		type!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
