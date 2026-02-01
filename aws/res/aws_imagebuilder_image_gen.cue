package res

import "list"

#aws_imagebuilder_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_imagebuilder_image")
	close({
		arn?:                             string
		container_recipe_arn?:            string
		date_created?:                    string
		distribution_configuration_arn?:  string
		enhanced_image_metadata_enabled?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                           string
		execution_role?:                   string
		id?:                               string
		image_recipe_arn?:                 string
		infrastructure_configuration_arn!: string
		name?:                             string
		os_version?:                       string
		output_resources?: [...close({
			amis?: [...close({
				account_id?:  string
				description?: string
				image?:       string
				name?:        string
				region?:      string
			})]
			containers?: [...close({
				image_uris?: [...string]
				region?: string
			})]
		})]
		image_scanning_configuration?: matchN(1, [#image_scanning_configuration, list.MaxItems(1) & [...#image_scanning_configuration]])
		platform?: string
		tags?: [string]: string
		image_tests_configuration?: matchN(1, [#image_tests_configuration, list.MaxItems(1) & [...#image_tests_configuration]])
		tags_all?: [string]: string
		version?: string
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [...#logging_configuration]])
		timeouts?: #timeouts
		workflow?: matchN(1, [#workflow, [...#workflow]])
	})

	#image_scanning_configuration: close({
		ecr_configuration?: matchN(1, [_#defs."/$defs/image_scanning_configuration/$defs/ecr_configuration", list.MaxItems(1) & [..._#defs."/$defs/image_scanning_configuration/$defs/ecr_configuration"]])
		image_scanning_enabled?: bool
	})

	#image_tests_configuration: close({
		image_tests_enabled?: bool
		timeout_minutes?:     number
	})

	#logging_configuration: close({
		log_group_name!: string
	})

	#timeouts: close({
		create?: string
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
