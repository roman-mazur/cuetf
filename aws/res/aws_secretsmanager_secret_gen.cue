package res

#aws_secretsmanager_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_secretsmanager_secret")
	close({
		replica?: matchN(1, [#replica, [...#replica]])
		arn?:                            string
		description?:                    string
		force_overwrite_replica_secret?: bool
		id?:                             string
		kms_key_id?:                     string
		name?:                           string
		name_prefix?:                    string
		policy?:                         string
		recovery_window_in_days?:        number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#replica: close({
		kms_key_id?:         string
		last_accessed_date?: string
		region!:             string
		status?:             string
		status_message?:     string
	})
}
