package data

#elasticstack_elasticsearch_ingest_processor_circle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_circle")
	close({
		// Description of the processor.
		description?: string

		// The difference between the resulting inscribed distance from
		// center to side and the circle’s radius (measured in meters for
		// `geo_shape`, unit-less for `shape`)
		error_distance!: number

		// The string-valued field to trim whitespace from.
		field!: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true` and `field` does not exist or is `null`, the
		// processor quietly exits without modifying the document.
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Which field mapping type is to be used when processing the
		// circle.
		shape_type!: string

		// Identifier for the processor.
		tag?: string

		// The field to assign the converted value to, by default `field`
		// is updated in-place
		target_field?: string
	})
}
