package res

#aws_redshift_hsm_client_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_hsm_client_certificate")
	close({
		arn?:                               string
		hsm_client_certificate_identifier!: string
		hsm_client_certificate_public_key?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
