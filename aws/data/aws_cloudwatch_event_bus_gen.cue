package data

#aws_cloudwatch_event_bus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_bus")
	close({
		arn?: string
		dead_letter_config?: [...close({
			arn?: string
		})]
		description?:        string
		id?:                 string
		kms_key_identifier?: string
		log_config?: [...close({
			include_detail?: string
			level?:          string
		})]
		name!:   string
		region?: string
	})
}
