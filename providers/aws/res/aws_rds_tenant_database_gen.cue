package res

aws_rds_tenant_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_rds_tenant_database")
	close({
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		character_set_name?:              string
		db_instance_identifier!:          string
		final_snapshot_identifier?:       string
		manage_master_user_password?:     bool
		master_user_password?:            string
		master_user_password_wo?:         string
		master_user_password_wo_version?: number
		master_user_secret?: [...close({
			kms_key_id?:    string
			secret_arn?:    string
			secret_status?: string
		})]
		master_user_secret_kms_key_id?: string
		master_username!:               string
		nchar_character_set_name?:      string
		skip_final_snapshot?:           bool
		tags?: [string]:     string
		tags_all?: [string]: string
		tenant_database_resource_id?: string
		tenant_db_name!:              string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})
}
