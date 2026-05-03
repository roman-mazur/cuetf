package res

#aws_ec2_network_insights_access_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_network_insights_access_scope")
	close({
		exclude_paths?: matchN(1, [#exclude_paths, [...#exclude_paths]])
		match_paths?: matchN(1, [#match_paths, [...#match_paths]])
		arn?: string
		id?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#exclude_paths: close({
		destination?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/destination", [..._#defs."/$defs/exclude_paths/$defs/destination"]])
		source?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/source", [..._#defs."/$defs/exclude_paths/$defs/source"]])
		through_resources?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/through_resources", [..._#defs."/$defs/exclude_paths/$defs/through_resources"]])
	})

	#match_paths: close({
		destination?: matchN(1, [_#defs."/$defs/match_paths/$defs/destination", [..._#defs."/$defs/match_paths/$defs/destination"]])
		source?: matchN(1, [_#defs."/$defs/match_paths/$defs/source", [..._#defs."/$defs/match_paths/$defs/source"]])
	})

	_#defs: "/$defs/exclude_paths/$defs/destination": close({
		packet_header_statement?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/destination/$defs/packet_header_statement", [..._#defs."/$defs/exclude_paths/$defs/destination/$defs/packet_header_statement"]])
		resource_statement?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/destination/$defs/resource_statement", [..._#defs."/$defs/exclude_paths/$defs/destination/$defs/resource_statement"]])
	})

	_#defs: "/$defs/exclude_paths/$defs/destination/$defs/packet_header_statement": close({
		destination_addresses?: [...string]
		destination_ports?: [...string]
		destination_prefix_lists?: [...string]
		protocols?: [...string]
		source_addresses?: [...string]
		source_ports?: [...string]
		source_prefix_lists?: [...string]
	})

	_#defs: "/$defs/exclude_paths/$defs/destination/$defs/resource_statement": close({
		resource_types?: [...string]
		resources?: [...string]
	})

	_#defs: "/$defs/exclude_paths/$defs/source": close({
		packet_header_statement?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/source/$defs/packet_header_statement", [..._#defs."/$defs/exclude_paths/$defs/source/$defs/packet_header_statement"]])
		resource_statement?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/source/$defs/resource_statement", [..._#defs."/$defs/exclude_paths/$defs/source/$defs/resource_statement"]])
	})

	_#defs: "/$defs/exclude_paths/$defs/source/$defs/packet_header_statement": close({
		destination_addresses?: [...string]
		destination_ports?: [...string]
		destination_prefix_lists?: [...string]
		protocols?: [...string]
		source_addresses?: [...string]
		source_ports?: [...string]
		source_prefix_lists?: [...string]
	})

	_#defs: "/$defs/exclude_paths/$defs/source/$defs/resource_statement": close({
		resource_types?: [...string]
		resources?: [...string]
	})

	_#defs: "/$defs/exclude_paths/$defs/through_resources": close({
		resource_statement?: matchN(1, [_#defs."/$defs/exclude_paths/$defs/through_resources/$defs/resource_statement", [..._#defs."/$defs/exclude_paths/$defs/through_resources/$defs/resource_statement"]])
	})

	_#defs: "/$defs/exclude_paths/$defs/through_resources/$defs/resource_statement": close({
		resource_types?: [...string]
		resources?: [...string]
	})

	_#defs: "/$defs/match_paths/$defs/destination": close({
		packet_header_statement?: matchN(1, [_#defs."/$defs/match_paths/$defs/destination/$defs/packet_header_statement", [..._#defs."/$defs/match_paths/$defs/destination/$defs/packet_header_statement"]])
		resource_statement?: matchN(1, [_#defs."/$defs/match_paths/$defs/destination/$defs/resource_statement", [..._#defs."/$defs/match_paths/$defs/destination/$defs/resource_statement"]])
	})

	_#defs: "/$defs/match_paths/$defs/destination/$defs/packet_header_statement": close({
		destination_addresses?: [...string]
		destination_ports?: [...string]
		destination_prefix_lists?: [...string]
		protocols?: [...string]
		source_addresses?: [...string]
		source_ports?: [...string]
		source_prefix_lists?: [...string]
	})

	_#defs: "/$defs/match_paths/$defs/destination/$defs/resource_statement": close({
		resource_types?: [...string]
		resources?: [...string]
	})

	_#defs: "/$defs/match_paths/$defs/source": close({
		packet_header_statement?: matchN(1, [_#defs."/$defs/match_paths/$defs/source/$defs/packet_header_statement", [..._#defs."/$defs/match_paths/$defs/source/$defs/packet_header_statement"]])
		resource_statement?: matchN(1, [_#defs."/$defs/match_paths/$defs/source/$defs/resource_statement", [..._#defs."/$defs/match_paths/$defs/source/$defs/resource_statement"]])
	})

	_#defs: "/$defs/match_paths/$defs/source/$defs/packet_header_statement": close({
		destination_addresses?: [...string]
		destination_ports?: [...string]
		destination_prefix_lists?: [...string]
		protocols?: [...string]
		source_addresses?: [...string]
		source_ports?: [...string]
		source_prefix_lists?: [...string]
	})

	_#defs: "/$defs/match_paths/$defs/source/$defs/resource_statement": close({
		resource_types?: [...string]
		resources?: [...string]
	})
}
