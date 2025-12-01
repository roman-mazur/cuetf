package res

#aws_redshift_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshift_snapshot_copy")
	close({
		cluster_identifier!: string
		destination_region!: string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                           string
		manual_snapshot_retention_period?: number
		retention_period?:                 number
		snapshot_copy_grant_name?:         string
	})
}
