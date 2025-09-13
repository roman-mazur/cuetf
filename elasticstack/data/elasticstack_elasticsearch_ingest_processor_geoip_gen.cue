package data

#elasticstack_elasticsearch_ingest_processor_geoip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_processor_geoip")
	close({
		// The database filename referring to a database the module ships
		// with (GeoLite2-City.mmdb, GeoLite2-Country.mmdb, or
		// GeoLite2-ASN.mmdb) or a custom database in the `ingest-geoip`
		// config directory.
		database_file?: string

		// The field to get the ip address from for the geographical
		// lookup.
		field!: string

		// If `true` only first found geoip data will be returned, even if
		// field contains array.
		first_only?: bool

		// Internal identifier of the resource
		id?: string

		// If `true` and `field` does not exist, the processor quietly
		// exits without modifying the document.
		ignore_missing?: bool

		// JSON representation of this data source.
		json?: string

		// Controls what properties are added to the `target_field` based
		// on the geoip lookup.
		properties?: [...string]

		// The field that will hold the geographical information looked up
		// from the MaxMind database.
		target_field?: string
	})
}
