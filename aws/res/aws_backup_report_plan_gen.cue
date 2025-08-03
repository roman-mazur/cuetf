package res

import "list"

#aws_backup_report_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_report_plan")
	close({
		arn?: string
		report_delivery_channel?: matchN(1, [#report_delivery_channel, list.MaxItems(1) & [_, ...] & [...#report_delivery_channel]])
		report_setting?: matchN(1, [#report_setting, list.MaxItems(1) & [_, ...] & [...#report_setting]])
		creation_time?:     string
		deployment_status?: string
		description?:       string
		id?:                string
		name!:              string
		region?:            string
		tags?: [string]:     string
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
