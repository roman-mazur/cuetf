package res

import "list"

#azurerm_kusto_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_cluster")
	close({
		allowed_fqdns?: [...string]
		allowed_ip_ranges?: [...string]
		auto_stop_enabled?:         bool
		data_ingestion_uri?:        string
		disk_encryption_enabled?:   bool
		double_encryption_enabled?: bool
		id?:                        string
		location!:                  string
		name!:                      string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		language_extension?: matchN(1, [#language_extension, [...#language_extension]])
		outbound_network_access_restricted?: bool
		language_extensions?: matchN(1, [#language_extensions, [...#language_extensions]])
		optimized_auto_scale?: matchN(1, [#optimized_auto_scale, list.MaxItems(1) & [...#optimized_auto_scale]])
		public_ip_type?:                string
		public_network_access_enabled?: bool
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		purge_enabled?:               bool
		resource_group_name!:         string
		streaming_ingestion_enabled?: bool
		tags?: [string]: string
		trusted_external_tenants?: [...string]
		timeouts?: #timeouts
		uri?:      string
		zones?: [...string]
		virtual_network_configuration?: matchN(1, [#virtual_network_configuration, list.MaxItems(1) & [...#virtual_network_configuration]])
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#language_extension: close({
		image!: string
		name!:  string
	})

	#language_extensions: close({
		image!: string
		name!:  string
	})

	#optimized_auto_scale: close({
		maximum_instances!: number
		minimum_instances!: number
	})

	#sku: close({
		capacity?: number
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#virtual_network_configuration: close({
		data_management_public_ip_id!: string
		engine_public_ip_id!:          string
		subnet_id!:                    string
	})
}
