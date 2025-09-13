package res

#aws_glue_catalog_table_optimizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_catalog_table_optimizer")
	close({
		catalog_id!:    string
		database_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		table_name!: string
		type!:       string
		configuration?: matchN(1, [#configuration, [...#configuration]])
	})

	#configuration: close({
		orphan_file_deletion_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/orphan_file_deletion_configuration", [..._#defs."/$defs/configuration/$defs/orphan_file_deletion_configuration"]])
		retention_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/retention_configuration", [..._#defs."/$defs/configuration/$defs/retention_configuration"]])
		enabled!:  bool
		role_arn!: string
	})

	_#defs: "/$defs/configuration/$defs/orphan_file_deletion_configuration": close({
		iceberg_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/orphan_file_deletion_configuration/$defs/iceberg_configuration", [..._#defs."/$defs/configuration/$defs/orphan_file_deletion_configuration/$defs/iceberg_configuration"]])
	})

	_#defs: "/$defs/configuration/$defs/orphan_file_deletion_configuration/$defs/iceberg_configuration": close({
		location?:                             string
		orphan_file_retention_period_in_days?: number
	})

	_#defs: "/$defs/configuration/$defs/retention_configuration": close({
		iceberg_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/retention_configuration/$defs/iceberg_configuration", [..._#defs."/$defs/configuration/$defs/retention_configuration/$defs/iceberg_configuration"]])
	})

	_#defs: "/$defs/configuration/$defs/retention_configuration/$defs/iceberg_configuration": close({
		clean_expired_files?:               bool
		number_of_snapshots_to_retain?:     number
		snapshot_retention_period_in_days?: number
	})
}
