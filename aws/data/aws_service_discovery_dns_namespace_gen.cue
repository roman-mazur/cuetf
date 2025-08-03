package data

#aws_service_discovery_dns_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_service_discovery_dns_namespace")
	close({
		arn?:         string
		description?: string
		hosted_zone?: string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]: string
		type!: string
	})
}
