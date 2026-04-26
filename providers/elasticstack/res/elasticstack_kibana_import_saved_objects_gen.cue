package res

#elasticstack_kibana_import_saved_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_import_saved_objects")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Applies various adjustments to the saved objects that are being
		// imported to maintain compatibility between different Kibana
		// versions. Use this option only if you encounter issues with
		// imported saved objects. Cannot be used with create_new_copies.
		compatibility_mode?: bool

		// Creates copies of saved objects, regenerates each object ID,
		// and resets the origin. When used, potential conflict errors
		// are avoided. Cannot be used with overwrite or
		// compatibility_mode.
		create_new_copies?: bool
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

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
