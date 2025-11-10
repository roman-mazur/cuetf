package res

import "list"

#aws_sagemaker_monitoring_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_monitoring_schedule")
	close({
		arn?:  string
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		monitoring_schedule_config!: matchN(1, [#monitoring_schedule_config, list.MaxItems(1) & [_, ...] & [...#monitoring_schedule_config]])
	})

	#monitoring_schedule_config: close({
		schedule_config?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/schedule_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/schedule_config"]])
		monitoring_job_definition_name!: string
		monitoring_type!:                string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/schedule_config": close({
		schedule_expression!: string
	})
}
