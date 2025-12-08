package res

import "list"

#azurerm_stream_analytics_stream_input_blob: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_stream_analytics_stream_input_blob")
	close({
		authentication_mode?: string
		date_format!:         string
		id?:                  string
		name!:                string
		path_pattern!:        string
		resource_group_name!: string
		serialization!: matchN(1, [#serialization, list.MaxItems(1) & [_, ...] & [...#serialization]])
		storage_account_key!:       string
		storage_account_name!:      string
		timeouts?:                  #timeouts
		storage_container_name!:    string
		stream_analytics_job_name!: string
		time_format!:               string
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
