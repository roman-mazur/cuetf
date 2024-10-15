package res

#aws_guardduty_detector_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_detector_feature")
	detector_id!: string
	id?:          string
	name!:        string
	status!:      string
	additional_configuration?: #additional_configuration | [...#additional_configuration]

	#additional_configuration: {
		name!:   string
		status!: string
	}
}
