package res

#aws_guardduty_publishing_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_publishing_destination")
	close({
		destination_arn!:  string
		destination_type?: string
		detector_id!:      string
		id?:               string
		kms_key_arn!:      string
		region?:           string
	})
}
