package res

#aws_redshift_hsm_client_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_hsm_client_certificate")
	arn?:                               string
	hsm_client_certificate_identifier!: string
	hsm_client_certificate_public_key?: string
	id?:                                string
	tags?: [string]:     string
	tags_all?: [string]: string
}
