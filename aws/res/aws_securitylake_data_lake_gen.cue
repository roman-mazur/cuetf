package res

#aws_securitylake_data_lake: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securitylake_data_lake")
	close({
		arn?: string
		configuration?: matchN(1, [#configuration, [...#configuration]])
		id?:                          string
		meta_store_manager_role_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		s3_bucket_arn?: string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
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
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
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
