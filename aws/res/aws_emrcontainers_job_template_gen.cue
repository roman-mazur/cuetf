package res

import "list"

#aws_emrcontainers_job_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_emrcontainers_job_template")
	close({
		arn?: string
		job_template_data!: matchN(1, [#job_template_data, list.MaxItems(1) & [_, ...] & [...#job_template_data]])
		id?:          string
		kms_key_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#job_template_data: close({
		configuration_overrides?: matchN(1, [_#defs."/$defs/job_template_data/$defs/configuration_overrides", list.MaxItems(1) & [..._#defs."/$defs/job_template_data/$defs/configuration_overrides"]])
		job_driver!: matchN(1, [_#defs."/$defs/job_template_data/$defs/job_driver", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/job_template_data/$defs/job_driver"]])
		execution_role_arn!: string
		job_tags?: [string]: string
		release_label!: string
	})

	#timeouts: close({
		delete?: string
	})

	_#defs: "/$defs/job_template_data/$defs/configuration_overrides": close({
		application_configuration?: matchN(1, [_#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/application_configuration", list.MaxItems(100) & [..._#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/application_configuration"]])
		monitoring_configuration?: matchN(1, [_#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration", list.MaxItems(1) & [..._#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration"]])
	})

	_#defs: "/$defs/job_template_data/$defs/configuration_overrides/$defs/application_configuration": close({
		configurations?: matchN(1, [_#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/application_configuration/$defs/configurations", list.MaxItems(100) & [..._#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/application_configuration/$defs/configurations"]])
		classification!: string
		properties?: [string]: string
	})

	_#defs: "/$defs/job_template_data/$defs/configuration_overrides/$defs/application_configuration/$defs/configurations": close({
		classification?: string
		properties?: [string]: string
	})

	_#defs: "/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration": close({
		cloud_watch_monitoring_configuration?: matchN(1, [_#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration/$defs/cloud_watch_monitoring_configuration", list.MaxItems(1) & [..._#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration/$defs/cloud_watch_monitoring_configuration"]])
		s3_monitoring_configuration?: matchN(1, [_#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration/$defs/s3_monitoring_configuration", list.MaxItems(1) & [..._#defs."/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration/$defs/s3_monitoring_configuration"]])
		persistent_app_ui?: string
	})

	_#defs: "/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration/$defs/cloud_watch_monitoring_configuration": close({
		log_group_name!:         string
		log_stream_name_prefix?: string
	})

	_#defs: "/$defs/job_template_data/$defs/configuration_overrides/$defs/monitoring_configuration/$defs/s3_monitoring_configuration": close({
		log_uri!: string
	})

	_#defs: "/$defs/job_template_data/$defs/job_driver": close({
		spark_sql_job_driver?: matchN(1, [_#defs."/$defs/job_template_data/$defs/job_driver/$defs/spark_sql_job_driver", list.MaxItems(1) & [..._#defs."/$defs/job_template_data/$defs/job_driver/$defs/spark_sql_job_driver"]])
		spark_submit_job_driver?: matchN(1, [_#defs."/$defs/job_template_data/$defs/job_driver/$defs/spark_submit_job_driver", list.MaxItems(1) & [..._#defs."/$defs/job_template_data/$defs/job_driver/$defs/spark_submit_job_driver"]])
	})

	_#defs: "/$defs/job_template_data/$defs/job_driver/$defs/spark_sql_job_driver": close({
		entry_point?:          string
		spark_sql_parameters?: string
	})

	_#defs: "/$defs/job_template_data/$defs/job_driver/$defs/spark_submit_job_driver": close({
		entry_point!: string
		entry_point_arguments?: [...string]
		spark_submit_parameters?: string
	})
}
