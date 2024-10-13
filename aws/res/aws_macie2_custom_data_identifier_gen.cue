package res

#aws_macie2_custom_data_identifier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_macie2_custom_data_identifier")
	arn?:         string
	created_at?:  string
	description?: string
	id?:          string
	ignore_words?: [...string]
	keywords?: [...string]
	maximum_match_distance?: number
	name?:                   string
	name_prefix?:            string
	regex?:                  string
	tags?: [string]:     string
	tags_all?: [string]: string
}
