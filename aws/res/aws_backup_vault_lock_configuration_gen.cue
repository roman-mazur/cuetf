package res

#aws_backup_vault_lock_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_vault_lock_configuration")
	close({
		backup_vault_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		backup_vault_name!:   string
		changeable_for_days?: number
		id?:                  string
		max_retention_days?:  number
		min_retention_days?:  number
	})
}
