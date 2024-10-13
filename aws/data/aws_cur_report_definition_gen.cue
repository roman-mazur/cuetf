package data

#aws_cur_report_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cur_report_definition")
	additional_artifacts?: [...string]
	additional_schema_elements?: [...string]
	compression?:            string
	format?:                 string
	id?:                     string
	refresh_closed_reports?: bool
	report_name!:            string
	report_versioning?:      string
	s3_bucket?:              string
	s3_prefix?:              string
	s3_region?:              string
	tags?: [string]: string
	time_unit?: string
}
