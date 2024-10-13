package res

#aws_verifiedaccess_instance_trust_provider_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_verifiedaccess_instance_trust_provider_attachment")
	id?:                               string
	verifiedaccess_instance_id!:       string
	verifiedaccess_trust_provider_id!: string
}
