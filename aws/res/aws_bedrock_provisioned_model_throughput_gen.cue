package res

#aws_bedrock_provisioned_model_throughput: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_provisioned_model_throughput")
	close({
		commitment_duration?:    string
		timeouts?:               #timeouts
		model_arn!:              string
		model_units!:            number
		provisioned_model_arn?:  string
		provisioned_model_name!: string
		region?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
	})
}
