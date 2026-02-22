package res

#google_biglake_iceberg_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_namespace")
	close({
		// The name of the IcebergCatalog.
		catalog!: string

		// The unique identifier of the namespace.
		namespace_id!: string
		id?:           string

		// User-defined properties for the namespace.
		properties?: [string]: string
		project?:  string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
