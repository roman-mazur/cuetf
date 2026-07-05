package res

google_migration_center_report: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_report")
	close({
		timeouts?: #timeouts

		// Creation timestamp.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Free-text description.
		description?: string

		// User-friendly display name. Maximum length is 63 characters.
		display_name?: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Name of resource.
		name?: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		report_config!: string
		project?:       string

		// User specified id for the report. It will become the last component
		// of the report name. The id must be unique within the project, must
		// conform with RFC-1034, is restricted to lower-cased letters, and has a
		// maximum length of 63 characters. The id must match the regular expression:
		// [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
		report_id!: string

		// Report creation state.
		// Possible values:
		// PENDING
		// SUCCEEDED
		// FAILED
		state?: string

		// Describes the Summary view of a Report, which contains aggregated values
		// for all the groups and preference sets included in this Report.
		summary?: [...close({
			all_assets_stats?: [...close({
				core_count_histogram?: [...close({
					buckets?: [...close({
						count?:       string
						lower_bound?: string
						upper_bound?: string
					})]
				})]
				memory_bytes_histogram?: [...close({
					buckets?: [...close({
						count?:       string
						lower_bound?: string
						upper_bound?: string
					})]
				})]
				memory_utilization_chart?: [...close({
					free?: string
					used?: string
				})]
				operating_system?: [...close({
					data_points?: [...close({
						label?: string
						value?: number
					})]
				})]
				software_instances?: [...close({
					data_points?: [...close({
						label?: string
						value?: number
					})]
				})]
				storage_bytes_histogram?: [...close({
					buckets?: [...close({
						count?:       string
						lower_bound?: string
						upper_bound?: string
					})]
				})]
				storage_utilization_chart?: [...close({
					free?: string
					used?: string
				})]
				total_assets?:        string
				total_cores?:         string
				total_memory_bytes?:  string
				total_storage_bytes?: string
			})]
			group_findings?: [...close({
				asset_aggregate_stats?: [...close({
					core_count_histogram?: [...close({
						buckets?: [...close({
							count?:       string
							lower_bound?: string
							upper_bound?: string
						})]
					})]
					memory_bytes_histogram?: [...close({
						buckets?: [...close({
							count?:       string
							lower_bound?: string
							upper_bound?: string
						})]
					})]
					memory_utilization_chart?: [...close({
						free?: string
						used?: string
					})]
					operating_system?: [...close({
						data_points?: [...close({
							label?: string
							value?: number
						})]
					})]
					software_instances?: [...close({
						data_points?: [...close({
							label?: string
							value?: number
						})]
					})]
					storage_bytes_histogram?: [...close({
						buckets?: [...close({
							count?:       string
							lower_bound?: string
							upper_bound?: string
						})]
					})]
					storage_utilization_chart?: [...close({
						free?: string
						used?: string
					})]
					total_assets?:        string
					total_cores?:         string
					total_memory_bytes?:  string
					total_storage_bytes?: string
				})]
				description?:             string
				display_name?:            string
				overlapping_asset_count?: string
				preference_set_findings?: [...close({
					compute_engine_finding?: [...close({
						allocated_asset_count?: string
						allocated_disk_types?: [...string]
						allocated_regions?: [...string]
						machine_series_allocations?: [...close({
							allocated_asset_count?: string
							machine_series?: [...close({
								code?: string
							})]
						})]
					})]
					description?:  string
					display_name?: string
					machine_preferences?: [...close({
						commitment_plan?: string
						compute_engine_preferences?: [...close({
							license_type?: string
							machine_preferences?: [...close({
								allowed_machine_series?: [...close({
									code?: string
								})]
							})]
							persistent_disk_type?: string
						})]
						region_preferences?: [...close({
							preferred_regions?: [...string]
						})]
						sizing_optimization_strategy?: string
						sole_tenancy_preferences?: [...close({
							commitment_plan?:         string
							cpu_overcommit_ratio?:    number
							host_maintenance_policy?: string
							node_types?: [...close({
								node_name?: string
							})]
						})]
						target_product?: string
						vmware_engine_preferences?: [...close({
							commitment_plan?:                         string
							cpu_overcommit_ratio?:                    number
							memory_overcommit_ratio?:                 number
							storage_deduplication_compression_ratio?: number
						})]
					})]
					monthly_cost_compute?: [...close({
						currency_code?: string
						nanos?:         number
						units?:         string
					})]
					monthly_cost_network_egress?: [...close({
						currency_code?: string
						nanos?:         number
						units?:         string
					})]
					monthly_cost_os_license?: [...close({
						currency_code?: string
						nanos?:         number
						units?:         string
					})]
					monthly_cost_other?: [...close({
						currency_code?: string
						nanos?:         number
						units?:         string
					})]
					monthly_cost_storage?: [...close({
						currency_code?: string
						nanos?:         number
						units?:         string
					})]
					monthly_cost_total?: [...close({
						currency_code?: string
						nanos?:         number
						units?:         string
					})]
					sole_tenant_finding?: [...close({
						allocated_asset_count?: string
						allocated_regions?: [...string]
						node_allocations?: [...close({
							allocated_asset_count?: string
							node?: [...close({
								node_name?: string
							})]
							node_count?: string
						})]
					})]
					vmware_engine_finding?: [...close({
						allocated_asset_count?: string
						allocated_regions?: [...string]
						node_allocations?: [...close({
							allocated_asset_count?: string
							node_count?:            string
							vmware_node?: [...close({
								code?: string
							})]
						})]
					})]
				})]
			})]
		})]

		// Report type.
		// Possible values:
		// TOTAL_COST_OF_OWNERSHIP
		type?: string

		// Last update timestamp.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
