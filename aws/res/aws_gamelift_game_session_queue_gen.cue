package res

#aws_gamelift_game_session_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_gamelift_game_session_queue")
	close({
		arn?:               string
		custom_event_data?: string
		destinations?: [...string]
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		notification_target?: string
		player_latency_policy?: matchN(1, [#player_latency_policy, [...#player_latency_policy]])
		tags?: [string]:     string
		tags_all?: [string]: string
		timeout_in_seconds?: number
	})

	#player_latency_policy: close({
		maximum_individual_player_latency_milliseconds!: number
		policy_duration_seconds?:                        number
	})
}
