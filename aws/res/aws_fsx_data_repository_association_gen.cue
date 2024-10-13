package res

import "list"

#aws_fsx_data_repository_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_data_repository_association")
	arn?:                              string
	association_id?:                   string
	batch_import_meta_data_on_create?: bool
	data_repository_path!:             string
	delete_data_in_filesystem?:        bool
	file_system_id!:                   string
	file_system_path!:                 string
	id?:                               string
	imported_file_chunk_size?:         number
	tags?: [string]:     string
	tags_all?: [string]: string
	s3?: #s3 | list.MaxItems(1) & [...#s3]
	timeouts?: #timeouts

	#s3: {
		auto_export_policy?: #s3.#auto_export_policy | list.MaxItems(1) & [...#s3.#auto_export_policy]
		auto_import_policy?: #s3.#auto_import_policy | list.MaxItems(1) & [...#s3.#auto_import_policy]

		#auto_export_policy: events?: [...string]

		#auto_import_policy: events?: [...string]
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
