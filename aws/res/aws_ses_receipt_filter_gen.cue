package res

#aws_ses_receipt_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_receipt_filter")
	close({
		arn?:    string
		cidr!:   string
		id?:     string
		name!:   string
		policy!: string
		region?: string
	})
}
