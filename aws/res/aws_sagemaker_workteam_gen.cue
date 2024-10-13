package res

import "list"

#aws_sagemaker_workteam: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_workteam")
	arn?:        string
	description: string
	id?:         string
	subdomain?:  string
	tags?: [string]:     string
	tags_all?: [string]: string
	workforce_name: string
	workteam_name:  string
	member_definition?: #member_definition | list.MaxItems(10) & [_, ...] & [...#member_definition]
	notification_configuration?: #notification_configuration | list.MaxItems(1) & [...#notification_configuration]

	#member_definition: {
		cognito_member_definition?: #member_definition.#cognito_member_definition | list.MaxItems(1) & [...#member_definition.#cognito_member_definition]
		oidc_member_definition?: #member_definition.#oidc_member_definition | list.MaxItems(1) & [...#member_definition.#oidc_member_definition]

		#cognito_member_definition: {
			client_id:  string
			user_group: string
			user_pool:  string
		}

		#oidc_member_definition: groups: [...string]
	}

	#notification_configuration: notification_topic_arn?: string
}
