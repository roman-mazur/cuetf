package res

#aws_route53_vpc_association_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_vpc_association_authorization")
	id?:         string
	vpc_id!:     string
	vpc_region?: string
	zone_id!:    string
}
