package res

import "list"

#aws_fis_experiment_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fis_experiment_template")
	close({
		action!: matchN(1, [#action, [_, ...] & [...#action]])
		experiment_options?: matchN(1, [#experiment_options, list.MaxItems(1) & [...#experiment_options]])
		description!: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		experiment_report_configuration?: matchN(1, [#experiment_report_configuration, list.MaxItems(1) & [...#experiment_report_configuration]])
		role_arn!: string
		log_configuration?: matchN(1, [#log_configuration, list.MaxItems(1) & [...#log_configuration]])
		stop_condition!: matchN(1, [#stop_condition, [_, ...] & [...#stop_condition]])
		target?: matchN(1, [#target, [...#target]])
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#action: close({
		parameter?: matchN(1, [_#defs."/$defs/action/$defs/parameter", [..._#defs."/$defs/action/$defs/parameter"]])
		action_id!:   string
		description?: string
		name!:        string
		start_after?: [...string]
		target?: matchN(1, [_#defs."/$defs/action/$defs/target", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/target"]])
	})

	#experiment_options: close({
		account_targeting?:            string
		empty_target_resolution_mode?: string
	})

	#experiment_report_configuration: close({
		data_sources?: matchN(1, [_#defs."/$defs/experiment_report_configuration/$defs/data_sources", list.MaxItems(1) & [..._#defs."/$defs/experiment_report_configuration/$defs/data_sources"]])
		outputs?: matchN(1, [_#defs."/$defs/experiment_report_configuration/$defs/outputs", list.MaxItems(1) & [..._#defs."/$defs/experiment_report_configuration/$defs/outputs"]])
		post_experiment_duration?: string
		pre_experiment_duration?:  string
	})

	#log_configuration: close({
		cloudwatch_logs_configuration?: matchN(1, [_#defs."/$defs/log_configuration/$defs/cloudwatch_logs_configuration", list.MaxItems(1) & [..._#defs."/$defs/log_configuration/$defs/cloudwatch_logs_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/log_configuration/$defs/s3_configuration", list.MaxItems(1) & [..._#defs."/$defs/log_configuration/$defs/s3_configuration"]])
		log_schema_version!: number
	})

	#stop_condition: close({
		source!: string
		value?:  string
	})

	#target: close({
		filter?: matchN(1, [_#defs."/$defs/target/$defs/filter", [..._#defs."/$defs/target/$defs/filter"]])
		name!: string
		parameters?: [string]: string
		resource_arns?: [...string]
		resource_type!:  string
		selection_mode!: string
		resource_tag?: matchN(1, [_#defs."/$defs/target/$defs/resource_tag", list.MaxItems(50) & [..._#defs."/$defs/target/$defs/resource_tag"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/action/$defs/parameter": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/action/$defs/target": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/experiment_report_configuration/$defs/data_sources": close({
		cloudwatch_dashboard?: matchN(1, [_#defs."/$defs/experiment_report_configuration/$defs/data_sources/$defs/cloudwatch_dashboard", [..._#defs."/$defs/experiment_report_configuration/$defs/data_sources/$defs/cloudwatch_dashboard"]])
	})

	_#defs: "/$defs/experiment_report_configuration/$defs/data_sources/$defs/cloudwatch_dashboard": close({
		dashboard_arn?: string
	})

	_#defs: "/$defs/experiment_report_configuration/$defs/outputs": close({
		s3_configuration?: matchN(1, [_#defs."/$defs/experiment_report_configuration/$defs/outputs/$defs/s3_configuration", list.MaxItems(1) & [..._#defs."/$defs/experiment_report_configuration/$defs/outputs/$defs/s3_configuration"]])
	})

	_#defs: "/$defs/experiment_report_configuration/$defs/outputs/$defs/s3_configuration": close({
		bucket_name!: string
		prefix?:      string
	})

	_#defs: "/$defs/log_configuration/$defs/cloudwatch_logs_configuration": close({
		log_group_arn!: string
	})

	_#defs: "/$defs/log_configuration/$defs/s3_configuration": close({
		bucket_name!: string
		prefix?:      string
	})

	_#defs: "/$defs/target/$defs/filter": close({
		path!: string
		values!: [...string]
	})

	_#defs: "/$defs/target/$defs/resource_tag": close({
		key!:   string
		value!: string
	})
}
