package res

#aws_guardduty_member_detector_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_member_detector_feature")
	close({
		account_id!: string
		additional_configuration?: matchN(1, [#additional_configuration, [...#additional_configuration]])
		detector_id!: string
		name!:        string
		region?:      string
		status!:      string
	})

	#additional_configuration: close({
		name!:   string
		status!: string
	})
}
