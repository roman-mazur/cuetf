package res

import "list"

#aws_ssm_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_association")
	apply_only_at_cron_interval?:      bool
	arn?:                              string
	association_id?:                   string
	association_name?:                 string
	automation_target_parameter_name?: string
	compliance_severity?:              string
	document_version?:                 string
	id?:                               string
	max_concurrency?:                  string
	max_errors?:                       string
	name!:                             string
	parameters?: [string]: string
	schedule_expression?: string
	sync_compliance?:     string
	tags?: [string]: string
	tags_all?: [string]: string
	wait_for_success_timeout_seconds?: number
	output_location?: #output_location | list.MaxItems(1) & [...#output_location]
	targets?: #targets | list.MaxItems(5) & [...#targets]

	#output_location: {
		s3_bucket_name!: string
		s3_key_prefix?:  string
		s3_region?:      string
	}

	#targets: {
		key!: string
		values!: [...string]
	}
}
