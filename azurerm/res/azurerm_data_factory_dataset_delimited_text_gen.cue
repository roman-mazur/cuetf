package res

import "list"

#azurerm_data_factory_dataset_delimited_text: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_dataset_delimited_text")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		column_delimiter?:    string
		compression_codec?:   string
		compression_level?:   string
		data_factory_id!:     string
		description?:         string
		encoding?:            string
		escape_character?:    string
		first_row_as_header?: bool
		folder?:              string
		azure_blob_fs_location?: matchN(1, [#azure_blob_fs_location, list.MaxItems(1) & [...#azure_blob_fs_location]])
		azure_blob_storage_location?: matchN(1, [#azure_blob_storage_location, list.MaxItems(1) & [...#azure_blob_storage_location]])
		id?:                  string
		linked_service_name!: string
		name!:                string
		null_value?:          string
		parameters?: [string]: string
		quote_character?: string
		row_delimiter?:   string
		http_server_location?: matchN(1, [#http_server_location, list.MaxItems(1) & [...#http_server_location]])
		schema_column?: matchN(1, [#schema_column, [...#schema_column]])
		timeouts?: #timeouts
	})

	#azure_blob_fs_location: close({
		dynamic_file_system_enabled?: bool
		dynamic_filename_enabled?:    bool
		dynamic_path_enabled?:        bool
		file_system?:                 string
		filename?:                    string
		path?:                        string
	})

	#azure_blob_storage_location: close({
		container!:                 string
		dynamic_container_enabled?: bool
		dynamic_filename_enabled?:  bool
		dynamic_path_enabled?:      bool
		filename?:                  string
		path?:                      string
	})

	#http_server_location: close({
		dynamic_filename_enabled?: bool
		dynamic_path_enabled?:     bool
		filename!:                 string
		path!:                     string
		relative_url!:             string
	})

	#schema_column: close({
		description?: string
		name!:        string
		type?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
