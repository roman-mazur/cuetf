package res

import "list"

#aws_flow_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_flow_log")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		deliver_cross_account_role?: string
		eni_id?:                     string
		iam_role_arn?:               string
		id?:                         string
		log_destination?:            string
		log_destination_type?:       string
		log_format?:                 string
		max_aggregation_interval?:   number
		destination_options?: matchN(1, [#destination_options, list.MaxItems(1) & [...#destination_options]])
		regional_nat_gateway_id?: string
		subnet_id?:               string
		tags?: [string]:     string
		tags_all?: [string]: string
		traffic_type?:                  string
		transit_gateway_attachment_id?: string
		transit_gateway_id?:            string
		vpc_id?:                        string
	})

	#destination_options: close({
		file_format?:                string
		hive_compatible_partitions?: bool
		per_hour_partition?:         bool
	})
}
