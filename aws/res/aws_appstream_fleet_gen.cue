package res

import "list"

#aws_appstream_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appstream_fleet")
	close({
		arn?:                            string
		created_time?:                   string
		description?:                    string
		disconnect_timeout_in_seconds?:  number
		display_name?:                   string
		enable_default_internet_access?: bool
		fleet_type?:                     string
		iam_role_arn?:                   string
		id?:                             string
		compute_capacity?: matchN(1, [#compute_capacity, list.MaxItems(1) & [_, ...] & [...#compute_capacity]])
		idle_disconnect_timeout_in_seconds?: number
		image_arn?:                          string
		image_name?:                         string
		domain_join_info?: matchN(1, [#domain_join_info, list.MaxItems(1) & [...#domain_join_info]])
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
		instance_type!:                string
		max_sessions_per_instance?:    number
		max_user_duration_in_seconds?: number
		name!:                         string
		region?:                       string
		state?:                        string
		stream_view?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#compute_capacity: close({
		available?:         number
		desired_instances?: number
		desired_sessions?:  number
		in_use?:            number
		running?:           number
	})

	#domain_join_info: close({
		directory_name?:                         string
		organizational_unit_distinguished_name?: string
	})

	#vpc_config: close({
		security_group_ids?: [...string]
		subnet_ids?: [...string]
	})
}
