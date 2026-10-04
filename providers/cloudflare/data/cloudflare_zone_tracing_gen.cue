package data

cloudflare_zone_tracing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zone_tracing")
	close({
		// Up to 100 OpenTelemetry destination identifiers that receive traces.
		destinations?: [...string]

		// Whether Cloudflare Traces is enabled for the zone.
		enabled?: bool

		// Whether trace context is sent externally or across a zone boundary.
		forward_context?: bool

		// Specify the zone ID.
		id?: string

		// Whether traces are persisted in Cloudflare.
		persist?: bool

		// When inbound trace context may be continued. Authenticated propagation is not supported yet.
		// Available values: "accept", "authenticated", "reject".
		propagation_policy?: string

		// The ratio of requests sampled for tracing, from 0 to 1.
		sampling_ratio?: number

		// Specify the zone ID.
		zone_id!: string
	})
}
