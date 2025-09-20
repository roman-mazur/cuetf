package data

#azurerm_storage_management_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_management_policy")
	close({
		timeouts?: #timeouts
		id?:       string
		rule?: [...close({
			actions?: [...close({
				base_blob?: [...close({
					auto_tier_to_hot_from_cool_enabled?:                             bool
					delete_after_days_since_creation_greater_than?:                  number
					delete_after_days_since_last_access_time_greater_than?:          number
					delete_after_days_since_modification_greater_than?:              number
					tier_to_archive_after_days_since_creation_greater_than?:         number
					tier_to_archive_after_days_since_last_access_time_greater_than?: number
					tier_to_archive_after_days_since_last_tier_change_greater_than?: number
					tier_to_archive_after_days_since_modification_greater_than?:     number
					tier_to_cold_after_days_since_creation_greater_than?:            number
					tier_to_cold_after_days_since_last_access_time_greater_than?:    number
					tier_to_cold_after_days_since_modification_greater_than?:        number
					tier_to_cool_after_days_since_creation_greater_than?:            number
					tier_to_cool_after_days_since_last_access_time_greater_than?:    number
					tier_to_cool_after_days_since_modification_greater_than?:        number
				})]
				snapshot?: [...close({
					change_tier_to_archive_after_days_since_creation?:               number
					change_tier_to_cool_after_days_since_creation?:                  number
					delete_after_days_since_creation_greater_than?:                  number
					tier_to_archive_after_days_since_last_tier_change_greater_than?: number
					tier_to_cold_after_days_since_creation_greater_than?:            number
				})]
				version?: [...close({
					change_tier_to_archive_after_days_since_creation?:               number
					change_tier_to_cool_after_days_since_creation?:                  number
					delete_after_days_since_creation?:                               number
					tier_to_archive_after_days_since_last_tier_change_greater_than?: number
					tier_to_cold_after_days_since_creation_greater_than?:            number
				})]
			})]
			enabled?: bool
			filters?: [...close({
				blob_types?: [...string]
				match_blob_index_tag?: [...close({
					name?:      string
					operation?: string
					value?:     string
				})]
				prefix_match?: [...string]
			})]
			name?: string
		})]
		storage_account_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
