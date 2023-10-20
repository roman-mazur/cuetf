package data

#aws_partition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_partition")
	dns_suffix?:         string
	id?:                 string
	partition?:          string
	reverse_dns_prefix?: string
}
