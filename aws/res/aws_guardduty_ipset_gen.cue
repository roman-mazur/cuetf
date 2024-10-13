package res

#aws_guardduty_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_guardduty_ipset")
	activate!:    bool
	arn?:         string
	detector_id!: string
	format!:      string
	id?:          string
	location!:    string
	name!:        string
	tags?: [string]: string
	tags_all?: [string]: string
}
