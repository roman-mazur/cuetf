package res

#aws_wafregional_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafregional_ipset")
	arn?:  string
	id?:   string
	name!: string
	ip_set_descriptor?: #ip_set_descriptor | [...#ip_set_descriptor]

	#ip_set_descriptor: {
		type!:  string
		value!: string
	}
}
