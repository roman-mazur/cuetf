package res

#aws_db_instance_automated_backups_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_db_instance_automated_backups_replication")
	close({
		id?:             string
		kms_key_id?:     string
		pre_signed_url?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		retention_period?:       number
		source_db_instance_arn!: string
		timeouts?:               #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
