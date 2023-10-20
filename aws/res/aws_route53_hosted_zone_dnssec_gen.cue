package res

#aws_route53_hosted_zone_dnssec: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_hosted_zone_dnssec")
	hosted_zone_id:  string
	id?:             string
	signing_status?: string
}
