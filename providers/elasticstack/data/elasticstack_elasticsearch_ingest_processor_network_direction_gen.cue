package data

#elasticstack_elasticsearch_ingest_processor_network_direction: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_ingest_processor_network_direction")
	close({
		// Description of the processor.
		description?: string

		// Field containing the destination IP address.
		destination_ip?: string

		// Internal identifier of the resource.
		id?: string

		// Conditionally execute the processor
		if?: string

		// Ignore failures for the processor.
		ignore_failure?: bool

		// If `true` and `field` does not exist or is `null`, the
		// processor quietly exits without modifying the document.
		ignore_missing?: bool

		// List of internal networks.
		internal_networks?: [...string]

		// A field on the given document to read the internal_networks
		// configuration from.
		internal_networks_field?: string

		// JSON representation of this data source.
		json?: string

		// Handle failures for the processor.
		on_failure?: [...string]

		// Field containing the source IP address.
		source_ip?: string

		// Identifier for the processor.
		tag?: string

		// Output field for the network direction.
		target_field?: string
	})
}
