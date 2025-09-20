package res

import "list"

#aws_mwaa_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_mwaa_environment")
	close({
		airflow_configuration_options?: [string]: string
		airflow_version?:               string
		arn?:                           string
		created_at?:                    string
		dag_s3_path!:                   string
		database_vpc_endpoint_service?: string
		endpoint_management?:           string
		environment_class?:             string
		execution_role_arn!:            string
		id?:                            string
		kms_key?:                       string
		last_updated?: [...close({
			created_at?: string
			error?: [...close({
				error_code?:    string
				error_message?: string
			})]
			status?: string
		})]
		max_webservers?: number
		max_workers?:    number
		min_webservers?: number
		min_workers?:    number
		name!:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                           string
		plugins_s3_object_version?:        string
		plugins_s3_path?:                  string
		requirements_s3_object_version?:   string
		requirements_s3_path?:             string
		schedulers?:                       number
		service_role_arn?:                 string
		source_bucket_arn!:                string
		startup_script_s3_object_version?: string
		startup_script_s3_path?:           string
		status?:                           string
		tags?: [string]:     string
		tags_all?: [string]: string
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [...#logging_configuration]])
		webserver_access_mode?: string
		webserver_url?:         string
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [_, ...] & [...#network_configuration]])
		webserver_vpc_endpoint_service?:  string
		weekly_maintenance_window_start?: string
		worker_replacement_strategy?:     string
		timeouts?:                        #timeouts
	})

	#logging_configuration: close({
		dag_processing_logs?: matchN(1, [_#defs."/$defs/logging_configuration/$defs/dag_processing_logs", list.MaxItems(1) & [..._#defs."/$defs/logging_configuration/$defs/dag_processing_logs"]])
		scheduler_logs?: matchN(1, [_#defs."/$defs/logging_configuration/$defs/scheduler_logs", list.MaxItems(1) & [..._#defs."/$defs/logging_configuration/$defs/scheduler_logs"]])
		task_logs?: matchN(1, [_#defs."/$defs/logging_configuration/$defs/task_logs", list.MaxItems(1) & [..._#defs."/$defs/logging_configuration/$defs/task_logs"]])
		webserver_logs?: matchN(1, [_#defs."/$defs/logging_configuration/$defs/webserver_logs", list.MaxItems(1) & [..._#defs."/$defs/logging_configuration/$defs/webserver_logs"]])
		worker_logs?: matchN(1, [_#defs."/$defs/logging_configuration/$defs/worker_logs", list.MaxItems(1) & [..._#defs."/$defs/logging_configuration/$defs/worker_logs"]])
	})

	#network_configuration: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/logging_configuration/$defs/dag_processing_logs": close({
		cloud_watch_log_group_arn?: string
		enabled?:                   bool
		log_level?:                 string
	})

	_#defs: "/$defs/logging_configuration/$defs/scheduler_logs": close({
		cloud_watch_log_group_arn?: string
		enabled?:                   bool
		log_level?:                 string
	})

	_#defs: "/$defs/logging_configuration/$defs/task_logs": close({
		cloud_watch_log_group_arn?: string
		enabled?:                   bool
		log_level?:                 string
	})

	_#defs: "/$defs/logging_configuration/$defs/webserver_logs": close({
		cloud_watch_log_group_arn?: string
		enabled?:                   bool
		log_level?:                 string
	})

	_#defs: "/$defs/logging_configuration/$defs/worker_logs": close({
		cloud_watch_log_group_arn?: string
		enabled?:                   bool
		log_level?:                 string
	})
}
