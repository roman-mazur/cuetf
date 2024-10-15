package res

import "list"

#aws_mq_broker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_mq_broker")
	apply_immediately?:                   bool
	arn?:                                 string
	authentication_strategy?:             string
	auto_minor_version_upgrade?:          bool
	broker_name!:                         string
	data_replication_mode?:               string
	data_replication_primary_broker_arn?: string
	deployment_mode?:                     string
	engine_type!:                         string
	engine_version!:                      string
	host_instance_type!:                  string
	id?:                                  string
	instances?: [...{
		console_url?: string
		endpoints?: [...string]
		ip_address?: string
	}]
	pending_data_replication_mode?: string
	publicly_accessible?:           bool
	security_groups?: [...string]
	storage_type?: string
	subnet_ids?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	configuration?: #configuration | list.MaxItems(1) & [...#configuration]
	encryption_options?: #encryption_options | list.MaxItems(1) & [...#encryption_options]
	ldap_server_metadata?: #ldap_server_metadata | list.MaxItems(1) & [...#ldap_server_metadata]
	logs?: #logs | list.MaxItems(1) & [...#logs]
	maintenance_window_start_time?: #maintenance_window_start_time | list.MaxItems(1) & [...#maintenance_window_start_time]
	timeouts?: #timeouts
	user?: #user | [_, ...] & [...#user]

	#configuration: {
		id?:       string
		revision?: number
	}

	#encryption_options: {
		kms_key_id?:        string
		use_aws_owned_key?: bool
	}

	#ldap_server_metadata: {
		hosts?: [...string]
		role_base?:                string
		role_name?:                string
		role_search_matching?:     string
		role_search_subtree?:      bool
		service_account_password?: string
		service_account_username?: string
		user_base?:                string
		user_role_name?:           string
		user_search_matching?:     string
		user_search_subtree?:      bool
	}

	#logs: {
		audit?:   string
		general?: bool
	}

	#maintenance_window_start_time: {
		day_of_week!: string
		time_of_day!: string
		time_zone!:   string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#user: {
		console_access?: bool
		groups?: [...string]
		password!:         string
		replication_user?: bool
		username!:         string
	}
}
