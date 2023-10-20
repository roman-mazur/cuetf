package res

#aws_route53_traffic_policy_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_traffic_policy_instance")
	hosted_zone_id:         string
	id?:                    string
	name:                   string
	traffic_policy_id:      string
	traffic_policy_version: number
	ttl:                    number
}
