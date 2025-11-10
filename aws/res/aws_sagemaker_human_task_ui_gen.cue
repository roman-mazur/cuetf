package res

import "list"

#aws_sagemaker_human_task_ui: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_human_task_ui")
	close({
		arn?:                string
		human_task_ui_name!: string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		ui_template!: matchN(1, [#ui_template, list.MaxItems(1) & [_, ...] & [...#ui_template]])
	})

	#ui_template: close({
		content?:        string
		content_sha256?: string
		url?:            string
	})
}
