package res

import "list"

#google_bigquery_analytics_hub_data_exchange: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_analytics_hub_data_exchange")
	close({
		// The ID of the data exchange. Must contain only Unicode letters,
		// numbers (0-9), underscores (_). Should not use characters that
		// require URL-escaping, or characters outside of ASCII, spaces.
		data_exchange_id!: string

		// Description of the data exchange.
		description?: string

		// Type of discovery on the discovery page for all the listings
		// under this exchange. Cannot be set for a Data Clean Room.
		// Updating this field also updates (overwrites) the
		// discoveryType field for all the listings under this exchange.
		// Possible values: ["DISCOVERY_TYPE_PRIVATE",
		// "DISCOVERY_TYPE_PUBLIC"]
		discovery_type?: string

		// Human-readable display name of the data exchange. The display
		// name must contain only Unicode letters, numbers (0-9),
		// underscores (_), dashes (-), spaces ( ), and must not start or
		// end with spaces.
		display_name!: string

		// Documentation describing the data exchange.
		documentation?: string

		// Base64 encoded image representing the data exchange.
		icon?: string
		id?:   string

		// Number of listings contained in the data exchange.
		listing_count?: number

		// The name of the location this data exchange.
		location!: string

		// If true, subscriber email logging is enabled and all queries on
		// the linked dataset will log the email address of the querying
		// user. Once enabled, this setting cannot be turned off.
		log_linked_dataset_query_user_email?: bool
		sharing_environment_config?: matchN(1, [#sharing_environment_config, list.MaxItems(1) & [...#sharing_environment_config]])
		timeouts?: #timeouts

		// The resource name of the data exchange, for example:
		// "projects/myproject/locations/US/dataExchanges/123"
		name?: string

		// Email or URL of the primary point of contact of the data
		// exchange.
		primary_contact?: string
		project?:         string
	})

	#sharing_environment_config: close({
		dcr_exchange_config?: matchN(1, [_#defs."/$defs/sharing_environment_config/$defs/dcr_exchange_config", list.MaxItems(1) & [..._#defs."/$defs/sharing_environment_config/$defs/dcr_exchange_config"]])
		default_exchange_config?: matchN(1, [_#defs."/$defs/sharing_environment_config/$defs/default_exchange_config", list.MaxItems(1) & [..._#defs."/$defs/sharing_environment_config/$defs/default_exchange_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/sharing_environment_config/$defs/dcr_exchange_config": close({})

	_#defs: "/$defs/sharing_environment_config/$defs/default_exchange_config": close({})
}
