package res

aws_lambdamicrovms_microvm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambdamicrovms_microvm")
	close({
		idle_policy?: matchN(1, [#idle_policy, [...#idle_policy]])
		logging?: matchN(1, [#logging, [...#logging]])
		timeouts?: #timeouts
		egress_network_connectors?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		endpoint?:           string
		execution_role_arn?: string
		image_arn!:          string
		image_version?:      string
		ingress_network_connectors?: [...string]
		maximum_duration_in_seconds?: number
		microvm_id?:                  string
		run_hook_payload?:            string
		started_at?:                  string
		state?:                       string
	})

	#idle_policy: close({
		auto_resume_enabled!:        bool
		max_idle_duration_seconds!:  number
		suspended_duration_seconds!: number
	})

	#logging: close({
		cloudwatch?: matchN(1, [_#defs."/$defs/logging/$defs/cloudwatch", [..._#defs."/$defs/logging/$defs/cloudwatch"]])
		disabled?: matchN(1, [_#defs."/$defs/logging/$defs/disabled", [..._#defs."/$defs/logging/$defs/disabled"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})

	_#defs: "/$defs/logging/$defs/cloudwatch": close({
		log_group?:  string
		log_stream?: string
	})

	_#defs: "/$defs/logging/$defs/disabled": close({})
}
