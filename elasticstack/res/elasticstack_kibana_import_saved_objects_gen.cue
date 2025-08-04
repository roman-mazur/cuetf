package res

#elasticstack_kibana_import_saved_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_import_saved_objects")
	close({
		errors?: [...close({
			error?: close({
				type?: string
			})
			id?: string
			meta?: close({
				icon?:  string
				title?: string
			})
			title?: string
			type?:  string
		})]

		// The contents of the exported saved objects file.
		file_contents!: string

		// Generated ID for the import.
		id?: string

		// If set to true, errors during the import process will not fail
		// the configuration application
		ignore_import_errors?: bool

		// Overwrites saved objects when they already exist. When used,
		// potential conflict errors are automatically resolved by
		// overwriting the destination object.
		overwrite?: bool

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// Indicates when the import was successfully completed. When set
		// to false, some objects may not have been created. For
		// additional information, refer to the errors and
		// success_results properties.
		success?: bool

		// Indicates the number of successfully imported records.
		success_count?: number
		success_results?: [...close({
			destination_id?: string
			id?:             string
			meta?: close({
				icon?:  string
				title?: string
			})
			type?: string
		})]
	})
}
