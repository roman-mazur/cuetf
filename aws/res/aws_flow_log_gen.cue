package res

import "list"

#aws_flow_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_flow_log")
	arn?:                        string
	deliver_cross_account_role?: string
	eni_id?:                     string
	iam_role_arn?:               string
	id?:                         string
	log_destination?:            string
	log_destination_type?:       string
	log_format?:                 string
	max_aggregation_interval?:   number
	subnet_id?:                  string
	tags?: [string]:     string
	tags_all?: [string]: string
	traffic_type?:                  string
	transit_gateway_attachment_id?: string
	transit_gateway_id?:            string
	vpc_id?:                        string
	destination_options?: #destination_options | list.MaxItems(1) & [...#destination_options]

	#destination_options: {
		file_format?:                string
		hive_compatible_partitions?: bool
		per_hour_partition?:         bool
	}
}
