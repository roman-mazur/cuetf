package res

#aws_route53_cidr_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_cidr_location")
	cidr_blocks!: [...string]
	cidr_collection_id!: string
	id?:                 string
	name!:               string
}
