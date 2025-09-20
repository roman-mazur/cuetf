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
		protocol!:            string
		credentials?: matchN(1, [#credentials, list.MaxItems(1) & [...#credentials]])
		resource_group_name!: string
		resource_id?:         string
		proxy?: matchN(1, [#proxy, list.MaxItems(1) & [...#proxy]])
		service_fabric_cluster?: matchN(1, [#service_fabric_cluster, list.MaxItems(1) & [...#service_fabric_cluster]])
		title?:    string
		timeouts?: #timeouts
		tls?: matchN(1, [#tls, list.MaxItems(1) & [...#tls]])
		url!: string
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

	_#defs: "/$defs/credentials/$defs/authorization": close({
		parameter?: string
		scheme?:    string
	})

	_#defs: "/$defs/service_fabric_cluster/$defs/server_x509_name": close({
		issuer_certificate_thumbprint!: string
		name!:                          string
	})
}
