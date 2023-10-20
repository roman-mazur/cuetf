package res

import "list"

#aws_imagebuilder_image_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_imagebuilder_image_pipeline")
	arn?:                             string
	container_recipe_arn?:            string
	date_created?:                    string
	date_last_run?:                   string
	date_next_run?:                   string
	date_updated?:                    string
	description?:                     string
	distribution_configuration_arn?:  string
	enhanced_image_metadata_enabled?: bool
	id?:                              string
	image_recipe_arn?:                string
	infrastructure_configuration_arn: string
	name:                             string
	platform?:                        string
	status?:                          string
	tags?: [string]: string
	tags_all?: [string]: string
	image_scanning_configuration?: #image_scanning_configuration | list.MaxItems(1) & [...#image_scanning_configuration]
	image_tests_configuration?:    #image_tests_configuration | list.MaxItems(1) & [...#image_tests_configuration]
	schedule?:                     #schedule | list.MaxItems(1) & [...#schedule]

	#image_scanning_configuration: {
		image_scanning_enabled?: bool
		ecr_configuration?:      #image_scanning_configuration.#ecr_configuration | list.MaxItems(1) & [...#image_scanning_configuration.#ecr_configuration]

		#ecr_configuration: {
			container_tags?: [...string]
			repository_name?: string
		}
	}

	#image_tests_configuration: {
		image_tests_enabled?: bool
		timeout_minutes?:     number
	}

	#schedule: {
		pipeline_execution_start_condition?: string
		schedule_expression:                 string
		timezone?:                           string
	}
}
