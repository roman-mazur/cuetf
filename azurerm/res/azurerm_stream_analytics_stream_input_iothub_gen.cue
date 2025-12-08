package res

import "list"

#azurerm_stream_analytics_stream_input_iothub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_stream_input_iothub")
	close({
		endpoint!:                     string
		eventhub_consumer_group_name!: string
		id?:                           string
		iothub_namespace!:             string
		serialization!: matchN(1, [#serialization, list.MaxItems(1) & [_, ...] & [...#serialization]])
		name!:                      string
		resource_group_name!:       string
		shared_access_policy_key!:  string
		shared_access_policy_name!: string
		stream_analytics_job_name!: string
		timeouts?:                  #timeouts
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
