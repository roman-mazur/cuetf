package res

import "list"

#aws_sagemaker_human_task_ui: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_human_task_ui")
	close({
		arn?: string
		ui_template?: matchN(1, [#ui_template, list.MaxItems(1) & [_, ...] & [...#ui_template]])
		human_task_ui_name!: string
		id?:                 string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#ui_template: close({
		content?:        string
		content_sha256?: string
		url?:            string
	})
}
