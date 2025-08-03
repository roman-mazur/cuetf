package res

#aws_securityhub_standards_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_standards_subscription")
	close({
		id?:            string
		region?:        string
		standards_arn!: string
		timeouts?:      #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
