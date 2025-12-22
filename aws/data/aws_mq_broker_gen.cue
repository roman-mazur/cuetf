package data

#aws_mq_broker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_mq_broker")
	close({
		arn?:                        string
		authentication_strategy?:    string
		auto_minor_version_upgrade?: bool
		broker_id?:                  string
		broker_name?:                string
		configuration?: [...close({
			id?:       string
			revision?: number
		})]
		deployment_mode?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		encryption_options?: [...close({
			kms_key_id?:        string
			use_aws_owned_key?: bool
		})]
		engine_type?:        string
		engine_version?:     string
		host_instance_type?: string
		id?:                 string
		instances?: [...close({
			console_url?: string
			endpoints?: [...string]
			ip_address?: string
		})]
		ldap_server_metadata?: [...close({
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
		})]
		logs?: [...close({
			audit?:   string
			general?: bool
		})]
		maintenance_window_start_time?: [...close({
			day_of_week?: string
			time_of_day?: string
			time_zone?:   string
		})]
		publicly_accessible?: bool
		security_groups?: [...string]
		storage_type?: string
		subnet_ids?: [...string]
		tags?: [string]: string
		user?: [...close({
			console_access?: bool
			groups?: [...string]
			replication_user?: bool
			username?:         string
		})]
	})
}
