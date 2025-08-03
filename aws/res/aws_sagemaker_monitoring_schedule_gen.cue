package res

import "list"

#aws_sagemaker_monitoring_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_monitoring_schedule")
	close({
		arn?: string
		monitoring_schedule_config?: matchN(1, [#monitoring_schedule_config, list.MaxItems(1) & [_, ...] & [...#monitoring_schedule_config]])
		id?:     string
		name?:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#monitoring_schedule_config: close({
		monitoring_job_definition_name!: string
		monitoring_type!:                string
		schedule_config?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/schedule_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/schedule_config"]])
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/schedule_config": close({
		schedule_expression!: string
	})
}
