package res

import "list"

#azurerm_api_management_backend: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_backend")
	close({
		api_management_name!: string
		description?:         string
		id?:                  string
		name!:                string
		circuit_breaker_rule?: matchN(1, [#circuit_breaker_rule, list.MaxItems(1) & [...#circuit_breaker_rule]])
		protocol!:            string
		resource_group_name!: string
		resource_id?:         string
		title?:               string
		credentials?: matchN(1, [#credentials, list.MaxItems(1) & [...#credentials]])
		proxy?: matchN(1, [#proxy, list.MaxItems(1) & [...#proxy]])
		service_fabric_cluster?: matchN(1, [#service_fabric_cluster, list.MaxItems(1) & [...#service_fabric_cluster]])
		timeouts?: #timeouts
		url!:      string
		tls?: matchN(1, [#tls, list.MaxItems(1) & [...#tls]])
	})

	#circuit_breaker_rule: close({
		failure_condition!: matchN(1, [_#defs."/$defs/circuit_breaker_rule/$defs/failure_condition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/circuit_breaker_rule/$defs/failure_condition"]])
		accept_retry_after_enabled?: bool
		name!:                       string
		trip_duration!:              string
	})

	#credentials: close({
		authorization?: matchN(1, [_#defs."/$defs/credentials/$defs/authorization", list.MaxItems(1) & [..._#defs."/$defs/credentials/$defs/authorization"]])
		certificate?: [...string]
		header?: [string]: string
		query?: [string]:  string
	})

	#proxy: close({
		password?: string
		url!:      string
		username!: string
	})

	#service_fabric_cluster: close({
		server_x509_name?: matchN(1, [_#defs."/$defs/service_fabric_cluster/$defs/server_x509_name", [..._#defs."/$defs/service_fabric_cluster/$defs/server_x509_name"]])
		client_certificate_id?:         string
		client_certificate_thumbprint?: string
		management_endpoints!: [...string]
		max_partition_resolution_retries!: number
		server_certificate_thumbprints?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#tls: close({
		validate_certificate_chain?: bool
		validate_certificate_name?:  bool
	})

	_#defs: "/$defs/circuit_breaker_rule/$defs/failure_condition": close({
		status_code_range?: matchN(1, [_#defs."/$defs/circuit_breaker_rule/$defs/failure_condition/$defs/status_code_range", list.MaxItems(10) & [..._#defs."/$defs/circuit_breaker_rule/$defs/failure_condition/$defs/status_code_range"]])
		count?: number
		error_reasons?: [...string]
		interval_duration!: string
		percentage?:        number
	})

	_#defs: "/$defs/circuit_breaker_rule/$defs/failure_condition/$defs/status_code_range": close({
		max!: number
		min!: number
	})

	_#defs: "/$defs/credentials/$defs/authorization": close({
		parameter?: string
		scheme?:    string
	})

	_#defs: "/$defs/service_fabric_cluster/$defs/server_x509_name": close({
		issuer_certificate_thumbprint!: string
		name!:                          string
	})
}
