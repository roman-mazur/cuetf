package res

#aws_chatbot_teams_channel_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chatbot_teams_channel_configuration")
	channel_id!:             string
	channel_name?:           string
	chat_configuration_arn?: string
	configuration_name!:     string
	guardrail_policy_arns?: [...string]
	iam_role_arn!:  string
	logging_level?: string
	sns_topic_arns?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	team_id!:                     string
	team_name?:                   string
	tenant_id!:                   string
	user_authorization_required?: bool
	timeouts?:                    #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
