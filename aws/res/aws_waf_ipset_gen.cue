package res

#aws_waf_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_ipset")
	arn?:                string
	id?:                 string
	name:                string
	ip_set_descriptors?: #ip_set_descriptors | [...#ip_set_descriptors]

	#ip_set_descriptors: {
		type:  string
		value: string
	}
}
