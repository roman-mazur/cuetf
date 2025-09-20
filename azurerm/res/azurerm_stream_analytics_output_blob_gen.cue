package res

import "list"

#azurerm_stream_analytics_output_blob: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_output_blob")
	close({
		authentication_mode?: string
		batch_max_wait_time?: string
		batch_min_rows?:      number
		blob_write_mode?:     string
		date_format!:         string
		id?:                  string
		name!:                string
		path_pattern!:        string
		serialization?: matchN(1, [#serialization, list.MaxItems(1) & [_, ...] & [...#serialization]])
		resource_group_name!:       string
		storage_account_key?:       string
		storage_account_name!:      string
		timeouts?:                  #timeouts
		storage_container_name!:    string
		stream_analytics_job_name!: string
		time_format!:               string
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
