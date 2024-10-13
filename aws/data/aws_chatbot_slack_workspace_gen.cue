package data

#aws_chatbot_slack_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chatbot_slack_workspace")
	slack_team_id?:   string
	slack_team_name!: string
}
