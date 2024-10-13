package res

#aws_db_instance_automated_backups_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_db_instance_automated_backups_replication")
	id?:                     string
	kms_key_id?:             string
	pre_signed_url?:         string
	retention_period?:       number
	source_db_instance_arn!: string
	timeouts?:               #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
