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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		fleet_type?:   string
		iam_role_arn?: string
		compute_capacity?: matchN(1, [#compute_capacity, list.MaxItems(1) & [_, ...] & [...#compute_capacity]])
		id?:                                 string
		idle_disconnect_timeout_in_seconds?: number
		image_arn?:                          string
		domain_join_info?: matchN(1, [#domain_join_info, list.MaxItems(1) & [...#domain_join_info]])
		image_name?:                   string
		instance_type!:                string
		max_sessions_per_instance?:    number
		max_user_duration_in_seconds?: number
		name!:                         string
		state?:                        string
		stream_view?:                  string
		tags?: [string]: string
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
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
