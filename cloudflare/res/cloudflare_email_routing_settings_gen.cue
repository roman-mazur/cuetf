package res

#cloudflare_email_routing_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_settings")
	close({
		// The date and time the settings have been created.
		created?: string

		// State of the zone settings for Email Routing.
		enabled?: bool

		// Email Routing settings identifier.
		id?: string

		// The date and time the settings have been modified.
		modified?: string

		// Domain of your zone.
		name?: string

		// Flag to check if the user skipped the configuration wizard.
		skip_wizard?: bool

		// Show the state of your account, and the type or configuration
		// error.
		// Available values: "ready", "unconfigured", "misconfigured",
		// "misconfigured/locked", "unlocked".
		status?: string

		// Identifier.
		zone_id!: string
	})
}
