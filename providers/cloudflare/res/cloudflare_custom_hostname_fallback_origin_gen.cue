package res

#cloudflare_custom_hostname_fallback_origin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_custom_hostname_fallback_origin")
	close({
		// This is the time the fallback origin was created.
		created_at?: string

		// These are errors that were encountered while trying to activate
		// a fallback origin.
		errors?: [...string]

		// Identifier.
		id?: string

		// Your origin hostname that requests to your custom hostnames
		// will be sent to.
		origin!: string

		// Status of the fallback origin's activation.
		// Available values: "initializing", "pending_deployment",
		// "pending_deletion", "active", "deployment_timed_out",
		// "deletion_timed_out".
		status?: string

		// This is the time the fallback origin was updated.
		updated_at?: string

		// Identifier.
		zone_id!: string
	})
}
