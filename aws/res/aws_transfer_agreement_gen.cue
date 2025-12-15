package res

#aws_transfer_agreement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_transfer_agreement")
	close({
		access_role!:      string
		agreement_id?:     string
		arn?:              string
		base_directory!:   string
		description?:      string
		id?:               string
		local_profile_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		partner_profile_id!: string
		server_id!:          string
		status?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
