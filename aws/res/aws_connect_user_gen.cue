package res

import "list"

#aws_connect_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_user")
	arn?:                string
	directory_user_id?:  string
	hierarchy_group_id?: string
	id?:                 string
	instance_id!:        string
	name!:               string
	password?:           string
	routing_profile_id!: string
	security_profile_ids!: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	user_id?: string
	identity_info?: #identity_info | list.MaxItems(1) & [...#identity_info]
	phone_config?: #phone_config | list.MaxItems(1) & [_, ...] & [...#phone_config]

	#identity_info: {
		email?:      string
		first_name?: string
		last_name?:  string
	}

	#phone_config: {
		after_contact_work_time_limit?: number
		auto_accept?:                   bool
		desk_phone_number?:             string
		phone_type!:                    string
	}
}
