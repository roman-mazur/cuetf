package res

import "list"

#aws_sagemaker_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_hub")
	close({
		s3_storage_config?: matchN(1, [#s3_storage_config, list.MaxItems(1) & [...#s3_storage_config]])
		arn?:              string
		hub_description!:  string
		hub_display_name?: string
		hub_name!:         string
		hub_search_keywords?: [...string]
		id?:     string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#s3_storage_config: close({
		s3_output_path?: string
	})
}
