package res

import "list"

#aws_sagemaker_monitoring_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_monitoring_schedule")
	arn?:  string
	id?:   string
	name?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	monitoring_schedule_config?: #monitoring_schedule_config | list.MaxItems(1) & [_, ...] & [...#monitoring_schedule_config]

	#monitoring_schedule_config: {
		monitoring_job_definition_name!: string
		monitoring_type!:                string
		schedule_config?: #monitoring_schedule_config.#schedule_config | list.MaxItems(1) & [...#monitoring_schedule_config.#schedule_config]

		#schedule_config: schedule_expression!: string
	}
}
