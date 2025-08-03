package res

#aws_db_instance_automated_backups_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_instance_automated_backups_replication")
	close({
		id?:                     string
		timeouts?:               #timeouts
		kms_key_id?:             string
		pre_signed_url?:         string
		region?:                 string
		retention_period?:       number
		source_db_instance_arn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
