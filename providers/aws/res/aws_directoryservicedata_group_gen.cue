package res

aws_directoryservicedata_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_directoryservicedata_group")
	close({
		directory_id!:       string
		distinguished_name?: string
		group_scope?:        string
		group_type?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		sam_account_name!: string
		sid?:              string
	})
}
