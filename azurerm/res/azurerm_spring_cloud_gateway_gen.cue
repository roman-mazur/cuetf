package res

import "list"

#azurerm_spring_cloud_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_gateway")
	close({
		application_performance_monitoring_ids?: [...string]
		application_performance_monitoring_types?: [...string]
		environment_variables?: [string]: string
		https_only?:                    bool
		id?:                            string
		instance_count?:                number
		name!:                          string
		public_network_access_enabled?: bool
		sensitive_environment_variables?: [string]: string
		api_metadata?: matchN(1, [#api_metadata, list.MaxItems(1) & [...#api_metadata]])
		spring_cloud_service_id!: string
		url?:                     string
		client_authorization?: matchN(1, [#client_authorization, list.MaxItems(1) & [...#client_authorization]])
		cors?: matchN(1, [#cors, list.MaxItems(1) & [...#cors]])
		local_response_cache_per_instance?: matchN(1, [#local_response_cache_per_instance, list.MaxItems(1) & [...#local_response_cache_per_instance]])
		local_response_cache_per_route?: matchN(1, [#local_response_cache_per_route, list.MaxItems(1) & [...#local_response_cache_per_route]])
		quota?: matchN(1, [#quota, list.MaxItems(1) & [...#quota]])
		sso?: matchN(1, [#sso, list.MaxItems(1) & [...#sso]])
		timeouts?: #timeouts
	})

	#api_metadata: close({
		description?:       string
		documentation_url?: string
		server_url?:        string
		title?:             string
		version?:           string
	})

	#client_authorization: close({
		certificate_ids?: [...string]
		verification_enabled?: bool
	})

	#cors: close({
		allowed_headers?: [...string]
		allowed_methods?: [...string]
		allowed_origin_patterns?: [...string]
		allowed_origins?: [...string]
		credentials_allowed?: bool
		exposed_headers?: [...string]
		max_age_seconds?: number
	})

	#local_response_cache_per_instance: close({
		size?:         string
		time_to_live?: string
	})

	#local_response_cache_per_route: close({
		size?:         string
		time_to_live?: string
	})

	#quota: close({
		cpu?:    string
		memory?: string
	})

	#sso: close({
		client_id?:     string
		client_secret?: string
		issuer_uri?:    string
		scope?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
