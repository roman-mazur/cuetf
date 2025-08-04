package data

#aws_fsx_ontap_storage_virtual_machines: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_ontap_storage_virtual_machines")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		ids?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
