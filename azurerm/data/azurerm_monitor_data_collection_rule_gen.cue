package data

#azurerm_monitor_data_collection_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_monitor_data_collection_rule")
	close({
		data_collection_endpoint_id?: string
		data_flow?: [...close({
			built_in_transform?: string
			destinations?: [...string]
			output_stream?: string
			streams?: [...string]
			transform_kql?: string
		})]
		data_sources?: [...close({
			data_import?: [...close({
				event_hub_data_source?: [...close({
					consumer_group?: string
					name?:           string
					stream?:         string
				})]
			})]
			extension?: [...close({
				extension_json?: string
				extension_name?: string
				input_data_sources?: [...string]
				name?: string
				streams?: [...string]
			})]
			iis_log?: [...close({
				log_directories?: [...string]
				name?: string
				streams?: [...string]
			})]
			log_file?: [...close({
				file_patterns?: [...string]
				format?: string
				name?:   string
				settings?: [...close({
					text?: [...close({
						record_start_timestamp_format?: string
					})]
				})]
				streams?: [...string]
			})]
			performance_counter?: [...close({
				counter_specifiers?: [...string]
				name?:                          string
				sampling_frequency_in_seconds?: number
				streams?: [...string]
			})]
			platform_telemetry?: [...close({
				name?: string
				streams?: [...string]
			})]
			prometheus_forwarder?: [...close({
				label_include_filter?: [...close({
					label?: string
					value?: string
				})]
				name?: string
				streams?: [...string]
			})]
			syslog?: [...close({
				facility_names?: [...string]
				log_levels?: [...string]
				name?: string
				streams?: [...string]
			})]
			windows_event_log?: [...close({
				name?: string
				streams?: [...string]
				x_path_queries?: [...string]
			})]
			windows_firewall_log?: [...close({
				name?: string
				streams?: [...string]
			})]
		})]
		description?: string
		destinations?: [...close({
			azure_monitor_metrics?: [...close({
				name?: string
			})]
			event_hub?: [...close({
				event_hub_id?: string
				name?:         string
			})]
			event_hub_direct?: [...close({
				event_hub_id?: string
				name?:         string
			})]
			log_analytics?: [...close({
				name?:                  string
				workspace_resource_id?: string
			})]
			monitor_account?: [...close({
				monitor_account_id?: string
				name?:               string
			})]
			storage_blob?: [...close({
				container_name?:     string
				name?:               string
				storage_account_id?: string
			})]
			storage_blob_direct?: [...close({
				container_name?:     string
				name?:               string
				storage_account_id?: string
			})]
			storage_table_direct?: [...close({
				name?:               string
				storage_account_id?: string
				table_name?:         string
			})]
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		immutable_id?:        string
		kind?:                string
		location?:            string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		stream_declaration?: [...close({
			column?: [...close({
				name?: string
				type?: string
			})]
			stream_name?: string
		})]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
