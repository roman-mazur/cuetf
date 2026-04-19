package data

#azurerm_managed_devops_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_managed_devops_pool")
	close({
		timeouts?: #timeouts
		azure_devops_organization?: [...close({
			organization?: [...close({
				parallelism?: number
				projects?: [...string]
				url?: string
			})]
			permission?: [...close({
				administrator_account?: [...close({
					groups?: [...string]
					users?: [...string]
				})]
				kind?: string
			})]
		})]
		dev_center_project_id?: string
		id?:                    string
		identity?: [...close({
			identity_ids?: [...string]
			type?: string
		})]
		location?:            string
		maximum_concurrency?: number
		name!:                string
		resource_group_name!: string
		stateful_agent?: [...close({
			automatic_resource_prediction?: [...close({
				prediction_preference?: string
			})]
			grace_period_time_span?: string
			manual_resource_prediction?: [...close({
				all_week_schedule?: number
				friday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				monday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				saturday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				sunday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				thursday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				time_zone_name?: string
				tuesday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				wednesday_schedule?: [...close({
					count?: number
					time?:  string
				})]
			})]
			maximum_agent_lifetime?: string
		})]
		stateless_agent?: [...close({
			automatic_resource_prediction?: [...close({
				prediction_preference?: string
			})]
			manual_resource_prediction?: [...close({
				all_week_schedule?: number
				friday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				monday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				saturday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				sunday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				thursday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				time_zone_name?: string
				tuesday_schedule?: [...close({
					count?: number
					time?:  string
				})]
				wednesday_schedule?: [...close({
					count?: number
					time?:  string
				})]
			})]
		})]
		tags?: [string]: string
		virtual_machine_scale_set_fabric?: [...close({
			image?: [...close({
				aliases?: [...string]
				buffer?:                string
				id?:                    string
				well_known_image_name?: string
			})]
			os_disk_storage_account_type?: string
			security?: [...close({
				interactive_logon_enabled?: bool
				key_vault_management?: [...close({
					certificate_store_location?: string
					certificate_store_name?:     string
					key_export_enabled?:         bool
					key_vault_certificate_ids?: [...string]
				})]
			})]
			sku_name?: string
			storage?: [...close({
				caching?:              string
				disk_size_in_gb?:      number
				drive_letter?:         string
				storage_account_type?: string
			})]
			subnet_id?: string
		})]
		work_folder?: string
	})

	#timeouts: close({
		read?: string
	})
}
