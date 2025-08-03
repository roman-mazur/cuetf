package res

#aws_backup_vault_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_vault_policy")
	close({
		backup_vault_arn?:  string
		backup_vault_name!: string
		id?:                string
		policy!:            string
		region?:            string
	})
}
