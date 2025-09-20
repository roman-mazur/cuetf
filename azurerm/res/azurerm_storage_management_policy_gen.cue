package res

import "list"

#azurerm_storage_management_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_management_policy")
	close({
		rule?: matchN(1, [#rule, [...#rule]])
		timeouts?:           #timeouts
		id?:                 string
		storage_account_id!: string
	})

	#rule: close({
		actions?: matchN(1, [_#defs."/$defs/rule/$defs/actions", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/actions"]])
		filters?: matchN(1, [_#defs."/$defs/rule/$defs/filters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/filters"]])
		enabled!: bool
		name!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rule/$defs/actions": close({
		base_blob?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/base_blob", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/actions/$defs/base_blob"]])
		snapshot?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/snapshot", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/actions/$defs/snapshot"]])
		version?: matchN(1, [_#defs."/$defs/rule/$defs/actions/$defs/version", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/actions/$defs/version"]])
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/base_blob": close({
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
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/snapshot": close({
		change_tier_to_archive_after_days_since_creation?:               number
		change_tier_to_cool_after_days_since_creation?:                  number
		delete_after_days_since_creation_greater_than?:                  number
		tier_to_archive_after_days_since_last_tier_change_greater_than?: number
		tier_to_cold_after_days_since_creation_greater_than?:            number
	})

	_#defs: "/$defs/rule/$defs/actions/$defs/version": close({
		change_tier_to_archive_after_days_since_creation?:               number
		change_tier_to_cool_after_days_since_creation?:                  number
		delete_after_days_since_creation?:                               number
		tier_to_archive_after_days_since_last_tier_change_greater_than?: number
		tier_to_cold_after_days_since_creation_greater_than?:            number
	})

	_#defs: "/$defs/rule/$defs/filters": close({
		match_blob_index_tag?: matchN(1, [_#defs."/$defs/rule/$defs/filters/$defs/match_blob_index_tag", [..._#defs."/$defs/rule/$defs/filters/$defs/match_blob_index_tag"]])
		blob_types!: [...string]
		prefix_match?: [...string]
	})

	_#defs: "/$defs/rule/$defs/filters/$defs/match_blob_index_tag": close({
		name!:      string
		operation?: string
		value!:     string
	})
}
