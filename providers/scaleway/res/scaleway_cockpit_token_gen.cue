package res

import "list"

#scaleway_cockpit_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_cockpit_token")
	close({
		// The date and time of the creation of the Cockpit Token (Format
		// ISO 8601)
		created_at?: string
		id?:         string
		scopes?: matchN(1, [#scopes, list.MaxItems(1) & [...#scopes]])

		// The name of the token
		name!: string

		// The project_id you want to attach the resource to
		project_id?: string
		timeouts?:   #timeouts

		// The region you want to attach the resource to
		region?: string

		// The secret key of the token
		secret_key?: string

		// The date and time of the last update of the Cockpit Token
		// (Format ISO 8601)
		updated_at?: string
	})

	#scopes: close({
		// Query logs
		query_logs?: bool

		// Query metrics
		query_metrics?: bool

		// Query traces
		query_traces?: bool

		// Setup alerts
		setup_alerts?: bool

		// Setup logs rules
		setup_logs_rules?: bool

		// Setup metrics rules
		setup_metrics_rules?: bool

		// Write logs
		write_logs?: bool

		// Write metrics
		write_metrics?: bool

		// Write traces
		write_traces?: bool
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
