package res

#aws_gamelift_game_session_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_gamelift_game_session_queue")
	arn?:               string
	custom_event_data?: string
	destinations?: [...string]
	id?:                  string
	name!:                string
	notification_target?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeout_in_seconds?: number
	player_latency_policy?: #player_latency_policy | [...#player_latency_policy]

	#player_latency_policy: {
		maximum_individual_player_latency_milliseconds!: number
		policy_duration_seconds?:                        number
	}
}
