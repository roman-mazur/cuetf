package res

import "list"

#aws_keyspaces_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_keyspaces_table")
	arn?:                  string
	default_time_to_live?: number
	id?:                   string
	keyspace_name!:        string
	table_name!:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	capacity_specification?: #capacity_specification | list.MaxItems(1) & [...#capacity_specification]
	client_side_timestamps?: #client_side_timestamps | list.MaxItems(1) & [...#client_side_timestamps]
	comment?: #comment | list.MaxItems(1) & [...#comment]
	encryption_specification?: #encryption_specification | list.MaxItems(1) & [...#encryption_specification]
	point_in_time_recovery?: #point_in_time_recovery | list.MaxItems(1) & [...#point_in_time_recovery]
	schema_definition?: #schema_definition | list.MaxItems(1) & [_, ...] & [...#schema_definition]
	timeouts?: #timeouts
	ttl?: #ttl | list.MaxItems(1) & [...#ttl]

	#capacity_specification: {
		read_capacity_units?:  number
		throughput_mode?:      string
		write_capacity_units?: number
	}

	#client_side_timestamps: status!: string

	#comment: message?: string

	#encryption_specification: {
		kms_key_identifier?: string
		type?:               string
	}

	#point_in_time_recovery: status?: string

	#schema_definition: {
		clustering_key?: #schema_definition.#clustering_key | [...#schema_definition.#clustering_key]
		column?: #schema_definition.#column | [_, ...] & [...#schema_definition.#column]
		partition_key?: #schema_definition.#partition_key | [_, ...] & [...#schema_definition.#partition_key]
		static_column?: #schema_definition.#static_column | [...#schema_definition.#static_column]

		#clustering_key: {
			name!:     string
			order_by!: string
		}

		#column: {
			name!: string
			type!: string
		}

		#partition_key: name!: string

		#static_column: name!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#ttl: status!: string
}
