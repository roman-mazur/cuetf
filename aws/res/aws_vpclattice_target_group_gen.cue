package res

import "list"

#aws_vpclattice_target_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpclattice_target_group")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
		config?: matchN(1, [#config, list.MaxItems(1) & [...#config]])
		timeouts?: #timeouts
	})

	#config: close({
		health_check?: matchN(1, [_#defs."/$defs/config/$defs/health_check", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/health_check"]])
		ip_address_type?:                string
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
		matcher?: matchN(1, [_#defs."/$defs/config/$defs/health_check/$defs/matcher", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/health_check/$defs/matcher"]])
		enabled?:                       bool
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
