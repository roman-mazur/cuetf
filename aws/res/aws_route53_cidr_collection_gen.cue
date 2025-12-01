package res

#aws_route53_cidr_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53_cidr_collection")
	close({
		arn?:     string
		id?:      string
		name!:    string
		version?: number
	})
}
