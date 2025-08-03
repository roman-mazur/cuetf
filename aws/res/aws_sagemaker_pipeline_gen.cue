package res

import "list"

#aws_sagemaker_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_pipeline")
	close({
		arn?: string
		id?:  string
		parallelism_configuration?: matchN(1, [#parallelism_configuration, list.MaxItems(1) & [...#parallelism_configuration]])
		pipeline_definition_s3_location?: matchN(1, [#pipeline_definition_s3_location, list.MaxItems(1) & [...#pipeline_definition_s3_location]])
		pipeline_definition?:   string
		pipeline_description?:  string
		pipeline_display_name!: string
		pipeline_name!:         string
		region?:                string
		role_arn?:              string
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
