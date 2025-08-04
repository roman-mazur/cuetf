package res

#aws_docdbelastic_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_docdbelastic_cluster")
	close({
		admin_user_name!:              string
		admin_user_password!:          string
		arn?:                          string
		auth_type!:                    string
		backup_retention_period?:      number
		endpoint?:                     string
		id?:                           string
		kms_key_id?:                   string
		name!:                         string
		preferred_backup_window?:      string
		preferred_maintenance_window?: string
		region?:                       string
		shard_capacity!:               number
		shard_count!:                  number
		subnet_ids?: [...string]
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_security_group_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
