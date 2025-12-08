package res

import "list"

#azurerm_monitor_data_collection_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_data_collection_rule")
	close({
		data_collection_endpoint_id?: string
		description?:                 string
		id?:                          string
		immutable_id?:                string
		data_flow!: matchN(1, [#data_flow, [_, ...] & [...#data_flow]])
		kind?:                string
		location!:            string
		name!:                string
		resource_group_name!: string
		data_sources?: matchN(1, [#data_sources, list.MaxItems(1) & [...#data_sources]])
		destinations!: matchN(1, [#destinations, list.MaxItems(1) & [_, ...] & [...#destinations]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		stream_declaration?: matchN(1, [#stream_declaration, [...#stream_declaration]])
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#data_flow: close({
		built_in_transform?: string
		destinations!: [...string]
		output_stream?: string
		streams!: [...string]
		transform_kql?: string
	})

	#data_sources: close({
		data_import?: matchN(1, [_#defs."/$defs/data_sources/$defs/data_import", list.MaxItems(1) & [..._#defs."/$defs/data_sources/$defs/data_import"]])
		extension?: matchN(1, [_#defs."/$defs/data_sources/$defs/extension", [..._#defs."/$defs/data_sources/$defs/extension"]])
		iis_log?: matchN(1, [_#defs."/$defs/data_sources/$defs/iis_log", [..._#defs."/$defs/data_sources/$defs/iis_log"]])
		log_file?: matchN(1, [_#defs."/$defs/data_sources/$defs/log_file", [..._#defs."/$defs/data_sources/$defs/log_file"]])
		performance_counter?: matchN(1, [_#defs."/$defs/data_sources/$defs/performance_counter", [..._#defs."/$defs/data_sources/$defs/performance_counter"]])
		platform_telemetry?: matchN(1, [_#defs."/$defs/data_sources/$defs/platform_telemetry", [..._#defs."/$defs/data_sources/$defs/platform_telemetry"]])
		prometheus_forwarder?: matchN(1, [_#defs."/$defs/data_sources/$defs/prometheus_forwarder", [..._#defs."/$defs/data_sources/$defs/prometheus_forwarder"]])
		syslog?: matchN(1, [_#defs."/$defs/data_sources/$defs/syslog", [..._#defs."/$defs/data_sources/$defs/syslog"]])
		windows_event_log?: matchN(1, [_#defs."/$defs/data_sources/$defs/windows_event_log", [..._#defs."/$defs/data_sources/$defs/windows_event_log"]])
		windows_firewall_log?: matchN(1, [_#defs."/$defs/data_sources/$defs/windows_firewall_log", [..._#defs."/$defs/data_sources/$defs/windows_firewall_log"]])
	})

	#destinations: close({
		azure_monitor_metrics?: matchN(1, [_#defs."/$defs/destinations/$defs/azure_monitor_metrics", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/azure_monitor_metrics"]])
		event_hub?: matchN(1, [_#defs."/$defs/destinations/$defs/event_hub", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/event_hub"]])
		event_hub_direct?: matchN(1, [_#defs."/$defs/destinations/$defs/event_hub_direct", list.MaxItems(1) & [..._#defs."/$defs/destinations/$defs/event_hub_direct"]])
		log_analytics?: matchN(1, [_#defs."/$defs/destinations/$defs/log_analytics", [..._#defs."/$defs/destinations/$defs/log_analytics"]])
		monitor_account?: matchN(1, [_#defs."/$defs/destinations/$defs/monitor_account", [..._#defs."/$defs/destinations/$defs/monitor_account"]])
		storage_blob?: matchN(1, [_#defs."/$defs/destinations/$defs/storage_blob", [..._#defs."/$defs/destinations/$defs/storage_blob"]])
		storage_blob_direct?: matchN(1, [_#defs."/$defs/destinations/$defs/storage_blob_direct", [..._#defs."/$defs/destinations/$defs/storage_blob_direct"]])
		storage_table_direct?: matchN(1, [_#defs."/$defs/destinations/$defs/storage_table_direct", [..._#defs."/$defs/destinations/$defs/storage_table_direct"]])
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#stream_declaration: close({
		column!: matchN(1, [_#defs."/$defs/stream_declaration/$defs/column", [_, ...] & [..._#defs."/$defs/stream_declaration/$defs/column"]])
		stream_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/data_sources/$defs/data_import": close({
		event_hub_data_source!: matchN(1, [_#defs."/$defs/data_sources/$defs/data_import/$defs/event_hub_data_source", [_, ...] & [..._#defs."/$defs/data_sources/$defs/data_import/$defs/event_hub_data_source"]])
	})

	_#defs: "/$defs/data_sources/$defs/data_import/$defs/event_hub_data_source": close({
		consumer_group?: string
		name!:           string
		stream!:         string
	})

	_#defs: "/$defs/data_sources/$defs/extension": close({
		extension_json?: string
		extension_name!: string
		input_data_sources?: [...string]
		name!: string
		streams!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/iis_log": close({
		log_directories?: [...string]
		name!: string
		streams!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/log_file": close({
		settings?: matchN(1, [_#defs."/$defs/data_sources/$defs/log_file/$defs/settings", list.MaxItems(1) & [..._#defs."/$defs/data_sources/$defs/log_file/$defs/settings"]])
		file_patterns!: [...string]
		format!: string
		name!:   string
		streams!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/log_file/$defs/settings": close({
		text!: matchN(1, [_#defs."/$defs/data_sources/$defs/log_file/$defs/settings/$defs/text", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_sources/$defs/log_file/$defs/settings/$defs/text"]])
	})

	_#defs: "/$defs/data_sources/$defs/log_file/$defs/settings/$defs/text": close({
		record_start_timestamp_format!: string
	})

	_#defs: "/$defs/data_sources/$defs/performance_counter": close({
		counter_specifiers!: [...string]
		name!:                          string
		sampling_frequency_in_seconds!: number
		streams!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/platform_telemetry": close({
		name!: string
		streams!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/prometheus_forwarder": close({
		label_include_filter?: matchN(1, [_#defs."/$defs/data_sources/$defs/prometheus_forwarder/$defs/label_include_filter", [..._#defs."/$defs/data_sources/$defs/prometheus_forwarder/$defs/label_include_filter"]])
		name!: string
		streams!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/prometheus_forwarder/$defs/label_include_filter": close({
		label!: string
		value!: string
	})

	_#defs: "/$defs/data_sources/$defs/syslog": close({
		facility_names!: [...string]
		log_levels!: [...string]
		name!: string
		streams!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/windows_event_log": close({
		name!: string
		streams!: [...string]
		x_path_queries!: [...string]
	})

	_#defs: "/$defs/data_sources/$defs/windows_firewall_log": close({
		name!: string
		streams!: [...string]
	})

	_#defs: "/$defs/destinations/$defs/azure_monitor_metrics": close({
		name!: string
	})

	_#defs: "/$defs/destinations/$defs/event_hub": close({
		event_hub_id!: string
		name!:         string
	})

	_#defs: "/$defs/destinations/$defs/event_hub_direct": close({
		event_hub_id!: string
		name!:         string
	})

	_#defs: "/$defs/destinations/$defs/log_analytics": close({
		name!:                  string
		workspace_resource_id!: string
	})

	_#defs: "/$defs/destinations/$defs/monitor_account": close({
		monitor_account_id!: string
		name!:               string
	})

	_#defs: "/$defs/destinations/$defs/storage_blob": close({
		container_name!:     string
		name!:               string
		storage_account_id!: string
	})

	_#defs: "/$defs/destinations/$defs/storage_blob_direct": close({
		container_name!:     string
		name!:               string
		storage_account_id!: string
	})

	_#defs: "/$defs/destinations/$defs/storage_table_direct": close({
		name!:               string
		storage_account_id!: string
		table_name!:         string
	})

	_#defs: "/$defs/stream_declaration/$defs/column": close({
		name!: string
		type!: string
	})
}
