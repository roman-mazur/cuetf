package res

#aws_route53_cidr_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_cidr_location")
	close({
		cidr_blocks!: [...string]
		cidr_collection_id!: string
		name!:               string
	})
}
