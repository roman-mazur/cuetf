package res

#aws_securitylake_data_lake: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securitylake_data_lake")
	close({
		configuration?: matchN(1, [#configuration, [...#configuration]])
		arn?:                         string
		id?:                          string
		meta_store_manager_role_arn!: string
		region?:                      string
		s3_bucket_arn?:               string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#configuration: close({
		lifecycle_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/lifecycle_configuration", [..._#defs."/$defs/configuration/$defs/lifecycle_configuration"]])
		replication_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/replication_configuration", [..._#defs."/$defs/configuration/$defs/replication_configuration"]])
		encryption_configuration?: [...close({
			kms_key_id?: string
		})]
		region!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/lifecycle_configuration": close({
		expiration?: matchN(1, [_#defs."/$defs/configuration/$defs/lifecycle_configuration/$defs/expiration", [..._#defs."/$defs/configuration/$defs/lifecycle_configuration/$defs/expiration"]])
		transition?: matchN(1, [_#defs."/$defs/configuration/$defs/lifecycle_configuration/$defs/transition", [..._#defs."/$defs/configuration/$defs/lifecycle_configuration/$defs/transition"]])
	})

	_#defs: "/$defs/configuration/$defs/lifecycle_configuration/$defs/expiration": close({
		days?: number
	})

	_#defs: "/$defs/configuration/$defs/lifecycle_configuration/$defs/transition": close({
		days?:          number
		storage_class?: string
	})

	_#defs: "/$defs/configuration/$defs/replication_configuration": close({
		regions?: [...string]
		role_arn?: string
	})
}
