package data

#aws_ram_resource_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ram_resource_share")
	close({
		arn?:               string
		id?:                string
		name?:              string
		owning_account_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		resource_arns?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		resource_owner!:        string
		resource_share_status?: string
		status?:                string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
