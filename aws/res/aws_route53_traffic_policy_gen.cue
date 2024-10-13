package res

#aws_route53_traffic_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_traffic_policy")
	comment?:  string
	document!: string
	id?:       string
	name!:     string
	type?:     string
	version?:  number
}
