package data

import "list"

#aws_dynamodb_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_dynamodb_table")
	close({
		arn?: string
		attribute?: [...close({
			name?: string
			type?: string
		})]
		billing_mode?:                string
		deletion_protection_enabled?: bool
		global_secondary_index?: [...close({
			hash_key?: string
			name?:     string
			non_key_attributes?: [...string]
			on_demand_throughput?: [...close({
				max_read_request_units?:  number
				max_write_request_units?: number
			})]
			projection_type?: string
			range_key?:       string
			read_capacity?:   number
			warm_throughput?: [...close({
				read_units_per_second?:  number
				write_units_per_second?: number
			})]
			write_capacity?: number
		})]
		hash_key?: string
		id?:       string
		local_secondary_index?: [...close({
			name?: string
			non_key_attributes?: [...string]
			projection_type?: string
			range_key?:       string
		})]
		name!: string
		on_demand_throughput?: [...close({
			max_read_request_units?:  number
			max_write_request_units?: number
		})]
		point_in_time_recovery?: [...close({
			enabled?:                 bool
			recovery_period_in_days?: number
		})]
		range_key?: string
		server_side_encryption?: matchN(1, [#server_side_encryption, list.MaxItems(1) & [...#server_side_encryption]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		read_capacity?: number
		replica?: [...close({
			kms_key_arn?: string
			region_name?: string
		})]
		stream_arn?:       string
		stream_enabled?:   bool
		stream_label?:     string
		stream_view_type?: string
		table_class?:      string
		tags?: [string]: string
		ttl?: [...close({
			attribute_name?: string
			enabled?:        bool
		})]
		warm_throughput?: [...close({
			read_units_per_second?:  number
			write_units_per_second?: number
		})]
		write_capacity?: number
	})

	#server_side_encryption: close({
		enabled?:     bool
		kms_key_arn?: string
	})
}
