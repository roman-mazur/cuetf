package data

#elasticstack_elasticsearch_ingest_processor_community_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_community_id")
	close({
		// Description of the processor.
		description?: string

		// Field containing the destination IP address.
		destination_ip?: string

		// Field containing the destination port.
		destination_port?: number

		// Field containing the IANA number.
		iana_number?: number

		// Field containing the ICMP code.
		icmp_code?: number

		// Field containing the ICMP type.
		icmp_type?: number

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

		// Seed for the community ID hash. Must be between 0 and 65535
		// (inclusive). The seed can prevent hash collisions between
		// network domains, such as a staging and production network that
		// use the same addressing scheme.
		seed?: number

		// Field containing the source IP address.
		source_ip?: string

		// Field containing the source port.
		source_port?: number

		// Identifier for the processor.
		tag?: string

		// Output field for the community ID.
		target_field?: string

		// Field containing the transport protocol. Used only when the
		// `iana_number` field is not present.
		transport?: string
	})
}
