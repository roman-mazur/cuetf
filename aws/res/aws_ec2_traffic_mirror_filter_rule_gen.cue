package res

import "list"

#aws_ec2_traffic_mirror_filter_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_traffic_mirror_filter_rule")
	close({
		arn?:                    string
		description?:            string
		destination_cidr_block!: string
		id?:                     string
		protocol?:               number
		region?:                 string
		destination_port_range?: matchN(1, [#destination_port_range, list.MaxItems(1) & [...#destination_port_range]])
		rule_action!: string
		rule_number!: number
		source_port_range?: matchN(1, [#source_port_range, list.MaxItems(1) & [...#source_port_range]])
		source_cidr_block!:        string
		traffic_direction!:        string
		traffic_mirror_filter_id!: string
	})

	#destination_port_range: close({
		from_port?: number
		to_port?:   number
	})

	#source_port_range: close({
		from_port?: number
		to_port?:   number
	})
}
