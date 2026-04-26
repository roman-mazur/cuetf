package data

import "list"

#elasticstack_elasticsearch_ingest_processor_inference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_inference")
	close({
		input_output?: matchN(1, [#input_output, list.MaxItems(1) & [...#input_output]])

		// Description of the processor.
		description?: string

		// Maps the document field names to the known field names of the
		// model. Maps the document fields to the model's expected input
		// fields.
		field_map?: [string]: string

		// Internal identifier of the resource
		id?: string

		// Conditionally execute the processor.
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// JSON representation of this data source.
		json?: string

		// The ID or alias for the trained model, or the ID of the
		// deployment.
		model_id!: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Identifier for the processor.
		tag?: string

		// Field added to incoming documents to contain results objects.
		target_field?: string
	})

	#input_output: close({
		// The field name from which the inference processor reads its
		// input value.
		input_field!: string

		// The field name to which the inference processor writes its
		// output.
		output_field?: string
	})
}
