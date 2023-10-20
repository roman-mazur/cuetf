package data

#aws_connect_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_user")
	arn?:                string
	directory_user_id?:  string
	hierarchy_group_id?: string
	id?:                 string
	identity_info?: [...{
		email?:      string
		first_name?: string
		last_name?:  string
	}]
	instance_id: string
	name?:       string
	phone_config?: [...{
		after_contact_work_time_limit?: number
		auto_accept?:                   bool
		desk_phone_number?:             string
		phone_type?:                    string
	}]
	routing_profile_id?: string
	security_profile_ids?: [...string]
	tags?: [string]: string
	user_id?: string
}
