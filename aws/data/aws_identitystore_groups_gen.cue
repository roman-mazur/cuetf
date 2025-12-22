package data

#aws_identitystore_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_identitystore_groups")
	close({
		groups?: [...close({
			description?:  string
			display_name?: string
			external_ids?: [...close({
				id?:     string
				issuer?: string
			})]
			group_id?:          string
			identity_store_id?: string
		})]
		identity_store_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
