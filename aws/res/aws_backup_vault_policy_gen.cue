package res

#aws_backup_vault_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_vault_policy")
	backup_vault_arn?:  string
	backup_vault_name!: string
	id?:                string
	policy!:            string
}
