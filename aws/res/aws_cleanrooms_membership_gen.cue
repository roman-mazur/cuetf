package res

#aws_cleanrooms_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cleanrooms_membership")
	close({
		arn?:                                string
		collaboration_arn?:                  string
		collaboration_creator_account_id?:   string
		collaboration_creator_display_name?: string
		collaboration_id!:                   string
		collaboration_name?:                 string
		create_time?:                        string
		id?:                                 string
		default_result_configuration?: matchN(1, [#default_result_configuration, [...#default_result_configuration]])
		member_abilities?: [...string]
		query_log_status!: string
		region?:           string
		payment_configuration?: matchN(1, [#payment_configuration, [...#payment_configuration]])
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
	})

	#default_result_configuration: close({
		output_configuration?: matchN(1, [_#defs."/$defs/default_result_configuration/$defs/output_configuration", [..._#defs."/$defs/default_result_configuration/$defs/output_configuration"]])
		role_arn?: string
	})

	#payment_configuration: close({
		query_compute?: matchN(1, [_#defs."/$defs/payment_configuration/$defs/query_compute", [..._#defs."/$defs/payment_configuration/$defs/query_compute"]])
	})

	_#defs: "/$defs/default_result_configuration/$defs/output_configuration": close({
		s3?: matchN(1, [_#defs."/$defs/default_result_configuration/$defs/output_configuration/$defs/s3", [..._#defs."/$defs/default_result_configuration/$defs/output_configuration/$defs/s3"]])
	})

	_#defs: "/$defs/default_result_configuration/$defs/output_configuration/$defs/s3": close({
		bucket!:        string
		key_prefix?:    string
		result_format!: string
	})

	_#defs: "/$defs/payment_configuration/$defs/query_compute": close({
		is_responsible!: bool
	})
}
