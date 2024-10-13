package data

#aws_backup_report_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_report_plan")
	arn?:               string
	creation_time?:     string
	deployment_status?: string
	description?:       string
	id?:                string
	name!:              string
	report_delivery_channel?: [...{
		formats?: [...string]
		s3_bucket_name?: string
		s3_key_prefix?:  string
	}]
	report_setting?: [...{
		accounts?: [...string]
		framework_arns?: [...string]
		number_of_frameworks?: number
		organization_units?: [...string]
		regions?: [...string]
		report_template?: string
	}]
	tags?: [string]: string
}
