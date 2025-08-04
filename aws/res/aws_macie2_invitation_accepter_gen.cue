package res

#aws_macie2_invitation_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_invitation_accepter")
	close({
		administrator_account_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		id?:            string
		invitation_id?: string
		timeouts?:      #timeouts
	})

	#timeouts: close({
		create?: string
	})
}
