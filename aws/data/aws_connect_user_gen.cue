package data

#aws_connect_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_user")
	close({
		arn?:                string
		directory_user_id?:  string
		hierarchy_group_id?: string
		id?:                 string
		identity_info?: [...close({
			email?:           string
			first_name?:      string
			last_name?:       string
			secondary_email?: string
		})]
		instance_id!: string
		name?:        string
		phone_config?: [...close({
			after_contact_work_time_limit?: number
			auto_accept?:                   bool
			desk_phone_number?:             string
			phone_type?:                    string
		})]
		region?:             string
		routing_profile_id?: string
		security_profile_ids?: [...string]
		tags?: [string]: string
		user_id?: string
	})
}
