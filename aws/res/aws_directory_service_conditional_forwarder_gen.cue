package res

#aws_directory_service_conditional_forwarder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_directory_service_conditional_forwarder")
	directory_id!: string
	dns_ips!: [...string]
	id?:                 string
	remote_domain_name!: string
}
