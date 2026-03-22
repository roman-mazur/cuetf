package res

import "list"

#azurerm_data_factory_dataset_binary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_dataset_binary")
	close({
		azure_blob_storage_location?: matchN(1, [#azure_blob_storage_location, list.MaxItems(1) & [...#azure_blob_storage_location]])
		compression?: matchN(1, [#compression, list.MaxItems(1) & [...#compression]])
		http_server_location?: matchN(1, [#http_server_location, list.MaxItems(1) & [...#http_server_location]])
		sftp_server_location?: matchN(1, [#sftp_server_location, list.MaxItems(1) & [...#sftp_server_location]])
		timeouts?: #timeouts
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:     string
		description?:         string
		folder?:              string
		id?:                  string
		linked_service_name!: string
		name!:                string
		parameters?: [string]: string
	})

	#azure_blob_storage_location: close({
		container!:                 string
		dynamic_container_enabled?: bool
		dynamic_filename_enabled?:  bool
		dynamic_path_enabled?:      bool
		filename?:                  string
		path?:                      string
	})

	#compression: close({
		level?: string
		type!:  string
	})

	#http_server_location: close({
		dynamic_filename_enabled?: bool
		dynamic_path_enabled?:     bool
		filename!:                 string
		path!:                     string
		relative_url!:             string
	})

	#sftp_server_location: close({
		dynamic_filename_enabled?: bool
		dynamic_path_enabled?:     bool
		filename!:                 string
		path!:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
