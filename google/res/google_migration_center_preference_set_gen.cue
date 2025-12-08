package res

import "list"

#google_migration_center_preference_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_preference_set")
	close({
		// Output only. The timestamp when the preference set was created.
		create_time?: string

		// A description of the preference set.
		description?: string

		// User-friendly display name. Maximum length is 63 characters.
		display_name?: string
		id?:           string

		// Part of 'parent'. See documentation of 'projectsId'.
		location!: string

		// Output only. Name of the preference set.
		name?: string

		// Required. User specified ID for the preference set. It will
		// become the last component of the preference set name. The ID
		// must be unique within the project, must conform with RFC-1034,
		// is restricted to lower-cased letters, and has a maximum length
		// of 63 characters. The ID must match the regular expression
		// '[a-z]([a-z0-9-]{0,61}[a-z0-9])?'.
		preference_set_id!: string
		timeouts?:          #timeouts
		virtual_machine_preferences?: matchN(1, [#virtual_machine_preferences, list.MaxItems(1) & [...#virtual_machine_preferences]])
		project?: string

		// Output only. The timestamp when the preference set was last
		// updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#virtual_machine_preferences: close({
		// Commitment plan to consider when calculating costs for virtual
		// machine insights and recommendations. If you are unsure which
		// value to set, a 3 year commitment plan is often a good value
		// to start with. Possible values: 'COMMITMENT_PLAN_UNSPECIFIED',
		// 'COMMITMENT_PLAN_NONE', 'COMMITMENT_PLAN_ONE_YEAR',
		// 'COMMITMENT_PLAN_THREE_YEARS'
		commitment_plan?: string

		// Sizing optimization strategy specifies the preferred strategy
		// used when extrapolating usage data to calculate insights and
		// recommendations for a virtual machine. If you are unsure which
		// value to set, a moderate sizing optimization strategy is often
		// a good value to start with. Possible values:
		// 'SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED',
		// 'SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE',
		// 'SIZING_OPTIMIZATION_STRATEGY_MODERATE',
		// 'SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE'
		sizing_optimization_strategy?: string

		// Target product for assets using this preference set. Specify
		// either target product or business goal, but not both. Possible
		// values: 'COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED',
		// 'COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE',
		// 'COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE',
		// 'COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY'
		target_product?: string
		compute_engine_preferences?: matchN(1, [_#defs."/$defs/virtual_machine_preferences/$defs/compute_engine_preferences", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_preferences/$defs/compute_engine_preferences"]])
		region_preferences?: matchN(1, [_#defs."/$defs/virtual_machine_preferences/$defs/region_preferences", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_preferences/$defs/region_preferences"]])
		sole_tenancy_preferences?: matchN(1, [_#defs."/$defs/virtual_machine_preferences/$defs/sole_tenancy_preferences", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_preferences/$defs/sole_tenancy_preferences"]])
		vmware_engine_preferences?: matchN(1, [_#defs."/$defs/virtual_machine_preferences/$defs/vmware_engine_preferences", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_preferences/$defs/vmware_engine_preferences"]])
	})

	_#defs: "/$defs/virtual_machine_preferences/$defs/compute_engine_preferences": close({
		machine_preferences?: matchN(1, [_#defs."/$defs/virtual_machine_preferences/$defs/compute_engine_preferences/$defs/machine_preferences", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine_preferences/$defs/compute_engine_preferences/$defs/machine_preferences"]])

		// License type to consider when calculating costs for virtual
		// machine insights and recommendations. If unspecified, costs
		// are calculated based on the default licensing plan. Possible
		// values: 'LICENSE_TYPE_UNSPECIFIED', 'LICENSE_TYPE_DEFAULT',
		// 'LICENSE_TYPE_BRING_YOUR_OWN_LICENSE'
		license_type?: string
	})

	_#defs: "/$defs/virtual_machine_preferences/$defs/compute_engine_preferences/$defs/machine_preferences": close({
		allowed_machine_series?: matchN(1, [_#defs."/$defs/virtual_machine_preferences/$defs/compute_engine_preferences/$defs/machine_preferences/$defs/allowed_machine_series", [..._#defs."/$defs/virtual_machine_preferences/$defs/compute_engine_preferences/$defs/machine_preferences/$defs/allowed_machine_series"]])
	})

	_#defs: "/$defs/virtual_machine_preferences/$defs/compute_engine_preferences/$defs/machine_preferences/$defs/allowed_machine_series": close({
		// Code to identify a Compute Engine machine series. Consult
		// https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison
		// for more details on the available series.
		code?: string
	})

	_#defs: "/$defs/virtual_machine_preferences/$defs/region_preferences": close({
		// A list of preferred regions, ordered by the most preferred
		// region first. Set only valid Google Cloud region names. See
		// https://cloud.google.com/compute/docs/regions-zones for
		// available regions.
		preferred_regions?: [...string]
	})

	_#defs: "/$defs/virtual_machine_preferences/$defs/sole_tenancy_preferences": close({
		// Commitment plan to consider when calculating costs for virtual
		// machine insights and recommendations. If you are unsure which
		// value to set, a 3 year commitment plan is often a good value
		// to start with. Possible values: 'COMMITMENT_PLAN_UNSPECIFIED',
		// 'ON_DEMAND', 'COMMITMENT_1_YEAR', 'COMMITMENT_3_YEAR'
		commitment_plan?: string
		node_types?: matchN(1, [_#defs."/$defs/virtual_machine_preferences/$defs/sole_tenancy_preferences/$defs/node_types", [..._#defs."/$defs/virtual_machine_preferences/$defs/sole_tenancy_preferences/$defs/node_types"]])

		// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0
		// inclusive.
		cpu_overcommit_ratio?: number

		// Sole Tenancy nodes maintenance policy. Possible values:
		// 'HOST_MAINTENANCE_POLICY_UNSPECIFIED',
		// 'HOST_MAINTENANCE_POLICY_DEFAULT',
		// 'HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE',
		// 'HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP'
		host_maintenance_policy?: string
	})

	_#defs: "/$defs/virtual_machine_preferences/$defs/sole_tenancy_preferences/$defs/node_types": close({
		// Name of the Sole Tenant node. Consult
		// https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
		node_name?: string
	})

	_#defs: "/$defs/virtual_machine_preferences/$defs/vmware_engine_preferences": close({
		// Commitment plan to consider when calculating costs for virtual
		// machine insights and recommendations. If you are unsure which
		// value to set, a 3 year commitment plan is often a good value
		// to start with. Possible values: 'COMMITMENT_PLAN_UNSPECIFIED',
		// 'ON_DEMAND', 'COMMITMENT_1_YEAR_MONTHLY_PAYMENTS',
		// 'COMMITMENT_3_YEAR_MONTHLY_PAYMENTS',
		// 'COMMITMENT_1_YEAR_UPFRONT_PAYMENT',
		// 'COMMITMENT_3_YEAR_UPFRONT_PAYMENT',
		commitment_plan?: string

		// CPU overcommit ratio. Acceptable values are between 1.0 and
		// 8.0, with 0.1 increment.
		cpu_overcommit_ratio?: number

		// Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5,
		// 1.75 and 2.0.
		memory_overcommit_ratio?: number

		// The Deduplication and Compression ratio is based on the logical
		// (Used Before) space required to store data before applying
		// deduplication and compression, in relation to the physical
		// (Used After) space required after applying deduplication and
		// compression. Specifically, the ratio is the Used Before space
		// divided by the Used After space. For example, if the Used
		// Before space is 3 GB, but the physical Used After space is 1
		// GB, the deduplication and compression ratio is 3x. Acceptable
		// values are between 1.0 and 4.0.
		storage_deduplication_compression_ratio?: number
	})
}
