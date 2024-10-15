package res

import "list"

#aws_opsworks_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opsworks_stack")
	agent_version?:                 string
	arn?:                           string
	berkshelf_version?:             string
	color?:                         string
	configuration_manager_name?:    string
	configuration_manager_version?: string
	custom_json?:                   string
	default_availability_zone?:     string
	default_instance_profile_arn!:  string
	default_os?:                    string
	default_root_device_type?:      string
	default_ssh_key_name?:          string
	default_subnet_id?:             string
	hostname_theme?:                string
	id?:                            string
	manage_berkshelf?:              bool
	name!:                          string
	region!:                        string
	service_role_arn!:              string
	stack_endpoint?:                string
	tags?: [string]:     string
	tags_all?: [string]: string
	use_custom_cookbooks?:         bool
	use_opsworks_security_groups?: bool
	vpc_id?:                       string
	custom_cookbooks_source?: #custom_cookbooks_source | list.MaxItems(1) & [...#custom_cookbooks_source]
	timeouts?: #timeouts

	#custom_cookbooks_source: {
		password?: string
		revision?: string
		ssh_key?:  string
		type!:     string
		url!:      string
		username?: string
	}

	#timeouts: create?: string
}
