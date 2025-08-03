package res

#aws_directory_service_conditional_forwarder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_conditional_forwarder")
	close({
		directory_id!: string
		dns_ips!: [...string]
		id?:                 string
		region?:             string
		remote_domain_name!: string
	})
}
