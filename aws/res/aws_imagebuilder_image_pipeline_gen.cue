package res

import "list"

#aws_imagebuilder_image_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_imagebuilder_image_pipeline")
	close({
		arn?:                  string
		container_recipe_arn?: string
		date_created?:         string
		date_last_run?:        string
		date_next_run?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		date_updated?:                   string
		description?:                    string
		distribution_configuration_arn?: string
		image_scanning_configuration?: matchN(1, [#image_scanning_configuration, list.MaxItems(1) & [...#image_scanning_configuration]])
		enhanced_image_metadata_enabled?: bool
		execution_role?:                  string
		image_tests_configuration?: matchN(1, [#image_tests_configuration, list.MaxItems(1) & [...#image_tests_configuration]])
		id?:               string
		image_recipe_arn?: string
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [...#schedule]])
		workflow?: matchN(1, [#workflow, [...#workflow]])
		infrastructure_configuration_arn!: string
		name!:                             string
		platform?:                         string
		status?:                           string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#image_scanning_configuration: close({
		ecr_configuration?: matchN(1, [_#defs."/$defs/image_scanning_configuration/$defs/ecr_configuration", list.MaxItems(1) & [..._#defs."/$defs/image_scanning_configuration/$defs/ecr_configuration"]])
		image_scanning_enabled?: bool
	})

	#image_tests_configuration: close({
		image_tests_enabled?: bool
		timeout_minutes?:     number
	})

	#schedule: close({
		pipeline_execution_start_condition?: string
		schedule_expression!:                string
		timezone?:                           string
	})

	#workflow: close({
		parameter?: matchN(1, [_#defs."/$defs/workflow/$defs/parameter", [..._#defs."/$defs/workflow/$defs/parameter"]])
		on_failure?:     string
		parallel_group?: string
		workflow_arn!:   string
	})

	_#defs: "/$defs/image_scanning_configuration/$defs/ecr_configuration": close({
		container_tags?: [...string]
		repository_name?: string
	})

	_#defs: "/$defs/workflow/$defs/parameter": close({
		name!:  string
		value!: string
	})
}
