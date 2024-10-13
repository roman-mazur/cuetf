package res

#aws_bedrock_provisioned_model_throughput: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrock_provisioned_model_throughput")
	commitment_duration?:    string
	id?:                     string
	model_arn!:              string
	model_units!:            number
	provisioned_model_arn?:  string
	provisioned_model_name!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: create?: string
}
