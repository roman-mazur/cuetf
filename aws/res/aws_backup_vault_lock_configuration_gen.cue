package res

#aws_backup_vault_lock_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_vault_lock_configuration")
	backup_vault_arn?:    string
	backup_vault_name!:   string
	changeable_for_days?: number
	id?:                  string
	max_retention_days?:  number
	min_retention_days?:  number
}
