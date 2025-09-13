package res

#google_eventarc_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_eventarc_channel")
	close({
		// The activation token for the channel. The token must be used by
		// the provider to register the channel for publishing.
		activation_token?: string

		// The creation time.
		create_time?: string

		// Resource name of a KMS crypto key (managed by the user) used to
		// encrypt/decrypt their event data. It must match the pattern
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'.
		crypto_key_name?: string
		id?:              string

		// The location for the resource
		location!: string

		// The resource name of the channel. Must be unique within the
		// location on the project.
		name!:    string
		project?: string

		// The name of the Pub/Sub topic created and managed by Eventarc
		// system as a transport for the event delivery. Format:
		// 'projects/{project}/topics/{topic_id}'.
		pubsub_topic?: string

		// The state of a Channel.
		state?:    string
		timeouts?: #timeouts

		// The name of the event provider (e.g. Eventarc SaaS partner)
		// associated with the channel. This provider will be granted
		// permissions to publish events to the channel. Format:
		// 'projects/{project}/locations/{location}/providers/{provider_id}'.
		third_party_provider?: string

		// Server assigned unique identifier for the channel. The value is
		// a UUID4 string and guaranteed to remain unchanged until the
		// resource is deleted.
		uid?: string

		// The last-modified time.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
