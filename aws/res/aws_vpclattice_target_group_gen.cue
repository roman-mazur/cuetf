package res

import "list"

#aws_vpclattice_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_target_group")
	close({
		arn?: string
		id?:  string
		config?: matchN(1, [#config, list.MaxItems(1) & [...#config]])
		timeouts?: #timeouts
		name!:     string
		region?:   string
		status?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#config: close({
		ip_address_type?: string
		health_check?: matchN(1, [_#defs."/$defs/config/$defs/health_check", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/health_check"]])
		lambda_event_structure_version?: string
		port?:                           number
		protocol?:                       string
		protocol_version?:               string
		vpc_identifier?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/config/$defs/health_check": close({
		enabled?: bool
		matcher?: matchN(1, [_#defs."/$defs/config/$defs/health_check/$defs/matcher", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/health_check/$defs/matcher"]])
		health_check_interval_seconds?: number
		health_check_timeout_seconds?:  number
		healthy_threshold_count?:       number
		path?:                          string
		port?:                          number
		protocol?:                      string
		protocol_version?:              string
		unhealthy_threshold_count?:     number
	})

	_#defs: "/$defs/config/$defs/health_check/$defs/matcher": close({
		value?: string
	})
}
