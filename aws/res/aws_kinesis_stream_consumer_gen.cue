package res

#aws_kinesis_stream_consumer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_kinesis_stream_consumer")
	close({
		arn?:                string
		creation_timestamp?: string
		id?:                 string
		name!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		stream_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
