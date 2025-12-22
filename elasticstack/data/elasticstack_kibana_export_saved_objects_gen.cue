package data

#elasticstack_kibana_export_saved_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_export_saved_objects")
	close({
		// Do not add export details. Defaults to true.
		exclude_export_details?: bool

		// List of objects to export.
		objects!: matchN(1, [close({
			// The ID of the saved object.
			id!: string

			// The type of the saved object.
			type!: string
		}), [...close({
			// The ID of the saved object.
			id!: string

			// The type of the saved object.
			type!: string
		})]])

		// The exported objects in NDJSON format.
		exported_objects?: string

		// Generated ID for the export.
		id?: string

		// Include references to other saved objects recursively. Defaults
		// to true.
		include_references_deep?: bool

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string
	})
}
