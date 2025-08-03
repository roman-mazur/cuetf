package res

import "list"

#aws_ec2_network_insights_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_network_insights_path")
	close({
		arn?:         string
		destination?: string
		filter_at_destination?: matchN(1, [#filter_at_destination, list.MaxItems(1) & [...#filter_at_destination]])
		destination_arn?:  string
		destination_ip?:   string
		destination_port?: number
		filter_at_source?: matchN(1, [#filter_at_source, list.MaxItems(1) & [...#filter_at_source]])
		id?:         string
		protocol!:   string
		region?:     string
		source!:     string
		source_arn?: string
		source_ip?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#filter_at_destination: close({
		destination_address?: string
		source_address?:      string
		destination_port_range?: matchN(1, [_#defs."/$defs/filter_at_destination/$defs/destination_port_range", list.MaxItems(1) & [..._#defs."/$defs/filter_at_destination/$defs/destination_port_range"]])
		source_port_range?: matchN(1, [_#defs."/$defs/filter_at_destination/$defs/source_port_range", list.MaxItems(1) & [..._#defs."/$defs/filter_at_destination/$defs/source_port_range"]])
	})

	#filter_at_source: close({
		destination_address?: string
		source_address?:      string
		destination_port_range?: matchN(1, [_#defs."/$defs/filter_at_source/$defs/destination_port_range", list.MaxItems(1) & [..._#defs."/$defs/filter_at_source/$defs/destination_port_range"]])
		source_port_range?: matchN(1, [_#defs."/$defs/filter_at_source/$defs/source_port_range", list.MaxItems(1) & [..._#defs."/$defs/filter_at_source/$defs/source_port_range"]])
	})

	_#defs: "/$defs/filter_at_destination/$defs/destination_port_range": close({
		from_port?: number
		to_port?:   number
	})

	_#defs: "/$defs/filter_at_destination/$defs/source_port_range": close({
		from_port?: number
		to_port?:   number
	})

	_#defs: "/$defs/filter_at_source/$defs/destination_port_range": close({
		from_port?: number
		to_port?:   number
	})

	_#defs: "/$defs/filter_at_source/$defs/source_port_range": close({
		from_port?: number
		to_port?:   number
	})
}
