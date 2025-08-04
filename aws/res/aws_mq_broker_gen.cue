package res

import "list"

#aws_mq_broker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_mq_broker")
	close({
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
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		host_instance_type!: string
		encryption_options?: matchN(1, [#encryption_options, list.MaxItems(1) & [...#encryption_options]])
		id?: string
		instances?: [...close({
			console_url?: string
			endpoints?: [...string]
			ip_address?: string
		})]
		ldap_server_metadata?: matchN(1, [#ldap_server_metadata, list.MaxItems(1) & [...#ldap_server_metadata]])
		pending_data_replication_mode?: string
		publicly_accessible?:           bool
		region?:                        string
		security_groups?: [...string]
		storage_type?: string
		subnet_ids?: [...string]
		logs?: matchN(1, [#logs, list.MaxItems(1) & [...#logs]])
		tags?: [string]: string
		maintenance_window_start_time?: matchN(1, [#maintenance_window_start_time, list.MaxItems(1) & [...#maintenance_window_start_time]])
		tags_all?: [string]: string
		timeouts?: #timeouts
		user?: matchN(1, [#user, [_, ...] & [...#user]])
	})

	#configuration: close({
		id?:       string
		revision?: number
	})

	#encryption_options: close({
		kms_key_id?:        string
		use_aws_owned_key?: bool
	})

	#ldap_server_metadata: close({
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
	})

	#logs: close({
		audit?:   string
		general?: bool
	})

	#maintenance_window_start_time: close({
		day_of_week!: string
		time_of_day!: string
		time_zone!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#user: close({
		console_access?: bool
		groups?: [...string]
		password!:         string
		replication_user?: bool
		username!:         string
	})
}
