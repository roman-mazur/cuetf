package res

#aws_cur_report_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cur_report_definition")
	close({
		additional_artifacts?: [...string]
		additional_schema_elements!: [...string]
		arn?:                    string
		compression!:            string
		format!:                 string
		id?:                     string
		refresh_closed_reports?: bool
		report_name!:            string
		report_versioning?:      string
		s3_bucket!:              string
		s3_prefix!:              string
		s3_region!:              string
		tags?: [string]:     string
		tags_all?: [string]: string
		time_unit!: string
	})
}
