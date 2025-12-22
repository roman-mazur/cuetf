package res

#google_service_directory_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_directory_service")
	close({
		id?: string

		// Metadata for the service. This data can be consumed
		// by service clients. The entire metadata dictionary may contain
		// up to 2000 characters, spread across all key-value pairs.
		// Metadata that goes beyond any these limits will be rejected.
		metadata?: [string]: string

		// The resource name for the service in the
		// format 'projects/*/locations/*/namespaces/*/services/*'.
		name?: string

		// The resource name of the namespace this service will belong to.
		namespace!: string
		timeouts?:  #timeouts

		// The Resource ID must be 1-63 characters long, including digits,
		// lowercase letters or the hyphen character.
		service_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
