package res

#aws_chatbot_slack_channel_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chatbot_slack_channel_configuration")
	close({
		chat_configuration_arn?: string
		configuration_name!:     string
		guardrail_policy_arns?: [...string]
		iam_role_arn!:       string
		logging_level?:      string
		region?:             string
		timeouts?:           #timeouts
		slack_channel_id!:   string
		slack_channel_name?: string
		slack_team_id!:      string
		slack_team_name?:    string
		sns_topic_arns?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		user_authorization_required?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
