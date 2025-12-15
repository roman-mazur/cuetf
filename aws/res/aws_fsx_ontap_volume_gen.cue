package res

import "list"

#aws_fsx_ontap_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_fsx_ontap_volume")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                               string
		bypass_snaplock_enterprise_retention?: bool
		copy_tags_to_backups?:                 bool
		file_system_id?:                       string
		final_backup_tags?: [string]: string
		flexcache_endpoint_type?: string
		aggregate_configuration?: matchN(1, [#aggregate_configuration, list.MaxItems(1) & [...#aggregate_configuration]])
		id?: string
		snaplock_configuration?: matchN(1, [#snaplock_configuration, list.MaxItems(1) & [...#snaplock_configuration]])
		junction_path?:     string
		name!:              string
		ontap_volume_type?: string
		security_style?:    string
		tiering_policy?: matchN(1, [#tiering_policy, list.MaxItems(1) & [...#tiering_policy]])
		size_in_bytes?:              string
		size_in_megabytes?:          number
		skip_final_backup?:          bool
		snapshot_policy?:            string
		storage_efficiency_enabled?: bool
		storage_virtual_machine_id!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		uuid?:         string
		volume_style?: string
		timeouts?:     #timeouts
		volume_type?:  string
	})

	#aggregate_configuration: close({
		aggregates?: [...string]
		constituents_per_aggregate?: number
		total_constituents?:         number
	})

	#snaplock_configuration: close({
		autocommit_period?: matchN(1, [_#defs."/$defs/snaplock_configuration/$defs/autocommit_period", list.MaxItems(1) & [..._#defs."/$defs/snaplock_configuration/$defs/autocommit_period"]])
		audit_log_volume?:           bool
		privileged_delete?:          string
		snaplock_type!:              string
		volume_append_mode_enabled?: bool
		retention_period?: matchN(1, [_#defs."/$defs/snaplock_configuration/$defs/retention_period", list.MaxItems(1) & [..._#defs."/$defs/snaplock_configuration/$defs/retention_period"]])
	})

	#tiering_policy: close({
		cooling_period?: number
		name?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/snaplock_configuration/$defs/autocommit_period": close({
		type?:  string
		value?: number
	})

	_#defs: "/$defs/snaplock_configuration/$defs/retention_period": close({
		default_retention?: matchN(1, [_#defs."/$defs/snaplock_configuration/$defs/retention_period/$defs/default_retention", list.MaxItems(1) & [..._#defs."/$defs/snaplock_configuration/$defs/retention_period/$defs/default_retention"]])
		maximum_retention?: matchN(1, [_#defs."/$defs/snaplock_configuration/$defs/retention_period/$defs/maximum_retention", list.MaxItems(1) & [..._#defs."/$defs/snaplock_configuration/$defs/retention_period/$defs/maximum_retention"]])
		minimum_retention?: matchN(1, [_#defs."/$defs/snaplock_configuration/$defs/retention_period/$defs/minimum_retention", list.MaxItems(1) & [..._#defs."/$defs/snaplock_configuration/$defs/retention_period/$defs/minimum_retention"]])
	})

	_#defs: "/$defs/snaplock_configuration/$defs/retention_period/$defs/default_retention": close({
		type?:  string
		value?: number
	})

	_#defs: "/$defs/snaplock_configuration/$defs/retention_period/$defs/maximum_retention": close({
		type?:  string
		value?: number
	})

	_#defs: "/$defs/snaplock_configuration/$defs/retention_period/$defs/minimum_retention": close({
		type?:  string
		value?: number
	})
}
