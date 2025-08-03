package res

#aws_workspacesweb_data_protection_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_data_protection_settings")
	close({
		additional_encryption_context?: [string]: string
		inline_redaction_configuration?: matchN(1, [#inline_redaction_configuration, [...#inline_redaction_configuration]])
		associated_portal_arns?: [...string]
		customer_managed_key?:         string
		data_protection_settings_arn?: string
		description?:                  string
		display_name!:                 string
		region?:                       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#inline_redaction_configuration: close({
		global_confidence_level?: number
		global_enforced_urls?: [...string]
		global_exempt_urls?: [...string]
		inline_redaction_pattern?: matchN(1, [_#defs."/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern", [..._#defs."/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern"]])
	})

	_#defs: "/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern": close({
		built_in_pattern_id?: string
		confidence_level?:    number
		enforced_urls?: [...string]
		exempt_urls?: [...string]
		custom_pattern?: matchN(1, [_#defs."/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern/$defs/custom_pattern", [..._#defs."/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern/$defs/custom_pattern"]])
		redaction_place_holder?: matchN(1, [_#defs."/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern/$defs/redaction_place_holder", [..._#defs."/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern/$defs/redaction_place_holder"]])
	})

	_#defs: "/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern/$defs/custom_pattern": close({
		keyword_regex?:       string
		pattern_description?: string
		pattern_name!:        string
		pattern_regex!:       string
	})

	_#defs: "/$defs/inline_redaction_configuration/$defs/inline_redaction_pattern/$defs/redaction_place_holder": close({
		redaction_place_holder_text?: string
		redaction_place_holder_type!: string
	})
}
