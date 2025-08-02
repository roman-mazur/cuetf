package data

#aws_elb_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elb_service_account")
	close({
		arn?:    string
		id?:     string
		region?: string
	})
}
