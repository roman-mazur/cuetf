package res

#aws_snapshot_create_volume_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_snapshot_create_volume_permission")
	close({
		account_id!: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		snapshot_id!: string
		timeouts?:    #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
