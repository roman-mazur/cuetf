package res

#aws_guardduty_threatintelset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_threatintelset")
	close({
		activate!:    bool
		arn?:         string
		detector_id!: string
		format!:      string
		id?:          string
		location!:    string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
