package data

#aws_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_service")
	close({
		dns_name?:           string
		id?:                 string
		partition?:          string
		region?:             string
		reverse_dns_name?:   string
		reverse_dns_prefix?: string
		service_id?:         string
		supported?:          bool
	})
}
