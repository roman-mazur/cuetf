package data

#aws_partition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_partition")
	close({
		dns_suffix?:         string
		id?:                 string
		partition?:          string
		reverse_dns_prefix?: string
	})
}
