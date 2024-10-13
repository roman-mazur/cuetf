package res

import "list"

#aws_workspaces_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_workspaces_directory")
	alias?:              string
	customer_user_name?: string
	directory_id!:       string
	directory_name?:     string
	directory_type?:     string
	dns_ip_addresses?: [...string]
	iam_role_id?: string
	id?:          string
	ip_group_ids?: [...string]
	registration_code?: string
	subnet_ids?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	workspace_security_group_id?: string
	self_service_permissions?: #self_service_permissions | list.MaxItems(1) & [...#self_service_permissions]
	workspace_access_properties?: #workspace_access_properties | list.MaxItems(1) & [...#workspace_access_properties]
	workspace_creation_properties?: #workspace_creation_properties | list.MaxItems(1) & [...#workspace_creation_properties]

	#self_service_permissions: {
		change_compute_type?:  bool
		increase_volume_size?: bool
		rebuild_workspace?:    bool
		restart_workspace?:    bool
		switch_running_mode?:  bool
	}

	#workspace_access_properties: {
		device_type_android?:    string
		device_type_chromeos?:   string
		device_type_ios?:        string
		device_type_linux?:      string
		device_type_osx?:        string
		device_type_web?:        string
		device_type_windows?:    string
		device_type_zeroclient?: string
	}

	#workspace_creation_properties: {
		custom_security_group_id?:            string
		default_ou?:                          string
		enable_internet_access?:              bool
		enable_maintenance_mode?:             bool
		user_enabled_as_local_administrator?: bool
	}
}
