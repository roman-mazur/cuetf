package data

#aws_waf_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_ipset")
	id?:  string
	name: string
}
