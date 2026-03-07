package res

#google_biglake_iceberg_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_namespace")
	close({
		timeouts?: #timeouts

		// The name of the IcebergCatalog.
		catalog!: string
		id?:      string

		// The unique identifier of the namespace.
		namespace_id!: string
		project?:      string

		// User-defined properties for the namespace.
		properties?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
