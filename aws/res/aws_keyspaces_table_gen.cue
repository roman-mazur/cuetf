package res

import "list"

#aws_keyspaces_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_keyspaces_table")
	close({
		arn?:                  string
		default_time_to_live?: number
		id?:                   string
		keyspace_name!:        string
		capacity_specification?: matchN(1, [#capacity_specification, list.MaxItems(1) & [...#capacity_specification]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		client_side_timestamps?: matchN(1, [#client_side_timestamps, list.MaxItems(1) & [...#client_side_timestamps]])
		table_name!: string
		tags?: [string]: string
		comment?: matchN(1, [#comment, list.MaxItems(1) & [...#comment]])
		encryption_specification?: matchN(1, [#encryption_specification, list.MaxItems(1) & [...#encryption_specification]])
		point_in_time_recovery?: matchN(1, [#point_in_time_recovery, list.MaxItems(1) & [...#point_in_time_recovery]])
		tags_all?: [string]: string
		schema_definition!: matchN(1, [#schema_definition, list.MaxItems(1) & [_, ...] & [...#schema_definition]])
		timeouts?: #timeouts
		ttl?: matchN(1, [#ttl, list.MaxItems(1) & [...#ttl]])
	})

	#capacity_specification: close({
		read_capacity_units?:  number
		throughput_mode?:      string
		write_capacity_units?: number
	})

	#client_side_timestamps: close({
		status!: string
	})

	#comment: close({
		message?: string
	})

	#encryption_specification: close({
		kms_key_identifier?: string
		type?:               string
	})

	#point_in_time_recovery: close({
		status?: string
	})

	#schema_definition: close({
		clustering_key?: matchN(1, [_#defs."/$defs/schema_definition/$defs/clustering_key", [..._#defs."/$defs/schema_definition/$defs/clustering_key"]])
		column!: matchN(1, [_#defs."/$defs/schema_definition/$defs/column", [_, ...] & [..._#defs."/$defs/schema_definition/$defs/column"]])
		partition_key!: matchN(1, [_#defs."/$defs/schema_definition/$defs/partition_key", [_, ...] & [..._#defs."/$defs/schema_definition/$defs/partition_key"]])
		static_column?: matchN(1, [_#defs."/$defs/schema_definition/$defs/static_column", [..._#defs."/$defs/schema_definition/$defs/static_column"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#ttl: close({
		status!: string
	})

	_#defs: "/$defs/schema_definition/$defs/clustering_key": close({
		name!:     string
		order_by!: string
	})

	_#defs: "/$defs/schema_definition/$defs/column": close({
		name!: string
		type!: string
	})

	_#defs: "/$defs/schema_definition/$defs/partition_key": close({
		name!: string
	})

	_#defs: "/$defs/schema_definition/$defs/static_column": close({
		name!: string
	})
}
