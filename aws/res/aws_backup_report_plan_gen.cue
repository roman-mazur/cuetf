package res

import "list"

#aws_backup_report_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_report_plan")
	close({
		arn?:               string
		creation_time?:     string
		deployment_status?: string
		description?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name!:   string
		tags?: [string]: string
		report_delivery_channel!: matchN(1, [#report_delivery_channel, list.MaxItems(1) & [_, ...] & [...#report_delivery_channel]])
		report_setting!: matchN(1, [#report_setting, list.MaxItems(1) & [_, ...] & [...#report_setting]])
		tags_all?: [string]: string
	})

	#report_delivery_channel: close({
		formats?: [...string]
		s3_bucket_name!: string
		s3_key_prefix?:  string
	})

	#report_setting: close({
		accounts?: [...string]
		framework_arns?: [...string]
		number_of_frameworks?: number
		organization_units?: [...string]
		regions?: [...string]
		report_template!: string
	})
}
