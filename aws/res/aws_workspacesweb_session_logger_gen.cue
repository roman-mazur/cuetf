package res

#aws_workspacesweb_session_logger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_session_logger")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		additional_encryption_context?: [string]: string
		associated_portal_arns?: [...string]
		customer_managed_key?: string
		display_name?:         string
		session_logger_arn?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		event_filter?: matchN(1, [#event_filter, [...#event_filter]])
		log_configuration?: matchN(1, [#log_configuration, [...#log_configuration]])
	})

	#event_filter: close({
		all?: matchN(1, [_#defs."/$defs/event_filter/$defs/all", [..._#defs."/$defs/event_filter/$defs/all"]])
		include?: [...string]
	})

	#log_configuration: close({
		s3?: matchN(1, [_#defs."/$defs/log_configuration/$defs/s3", [..._#defs."/$defs/log_configuration/$defs/s3"]])
	})

	_#defs: "/$defs/event_filter/$defs/all": close({})

	_#defs: "/$defs/log_configuration/$defs/s3": close({
		bucket!:           string
		bucket_owner?:     string
		folder_structure!: string
		key_prefix?:       string
		log_file_format!:  string
	})
}
