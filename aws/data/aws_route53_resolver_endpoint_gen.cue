package data

#aws_route53_resolver_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_endpoint")
	arn?:       string
	direction?: string
	id?:        string
	ip_addresses?: [...string]
	name?:                 string
	resolver_endpoint_id?: string
	status?:               string
	vpc_id?:               string
	filter?:               #filter | [...#filter]

	#filter: {
		name: string
		values: [...string]
	}
}
