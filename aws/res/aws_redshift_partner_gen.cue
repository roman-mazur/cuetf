package res

#aws_redshift_partner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_partner")
	close({
		account_id!:         string
		cluster_identifier!: string
		database_name!:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		id?:             string
		partner_name!:   string
		status?:         string
		status_message?: string
	})
}
