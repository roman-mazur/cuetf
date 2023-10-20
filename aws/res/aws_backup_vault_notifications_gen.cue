package res

#aws_backup_vault_notifications: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_vault_notifications")
	backup_vault_arn?: string
	backup_vault_events: [...string]
	backup_vault_name: string
	id?:               string
	sns_topic_arn:     string
}
