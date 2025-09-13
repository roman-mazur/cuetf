package res

import "list"

#google_app_engine_service_network_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_app_engine_service_network_settings")
	close({
		network_settings?: matchN(1, [#network_settings, list.MaxItems(1) & [_, ...] & [...#network_settings]])
		timeouts?: #timeouts
		id?:       string
		project?:  string

		// The name of the service these settings apply to.
		service!: string
	})

	#network_settings: close({
		// The ingress settings for version or service. Default value:
		// "INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED" Possible values:
		// ["INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED",
		// "INGRESS_TRAFFIC_ALLOWED_ALL",
		// "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY",
		// "INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB"]
		ingress_traffic_allowed?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
