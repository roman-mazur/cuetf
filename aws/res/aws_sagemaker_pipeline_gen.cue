package res

import "list"

#aws_sagemaker_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_pipeline")
	close({
		arn?:                   string
		id?:                    string
		pipeline_definition?:   string
		pipeline_description?:  string
		pipeline_display_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		parallelism_configuration?: matchN(1, [#parallelism_configuration, list.MaxItems(1) & [...#parallelism_configuration]])
		pipeline_name!: string
		pipeline_definition_s3_location?: matchN(1, [#pipeline_definition_s3_location, list.MaxItems(1) & [...#pipeline_definition_s3_location]])
		role_arn?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#parallelism_configuration: close({
		max_parallel_execution_steps!: number
	})

	#pipeline_definition_s3_location: close({
		bucket!:     string
		object_key!: string
		version_id?: string
	})
}
