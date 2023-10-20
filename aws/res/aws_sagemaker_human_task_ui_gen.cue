package res

import "list"

#aws_sagemaker_human_task_ui: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_human_task_ui")
	arn?:               string
	human_task_ui_name: string
	id?:                string
	tags?: [string]: string
	tags_all?: [string]: string
	ui_template?: #ui_template | list.MaxItems(1) & [_, ...] & [...#ui_template]

	#ui_template: {
		content?:        string
		content_sha256?: string
		url?:            string
	}
}
