package res

#aws_route53_zone_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_zone_association")
	id?:             string
	owning_account?: string
	vpc_id!:         string
	vpc_region?:     string
	zone_id!:        string
}
