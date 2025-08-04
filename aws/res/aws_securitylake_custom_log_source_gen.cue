package res

#aws_securitylake_custom_log_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securitylake_custom_log_source")
	close({
		configuration?: matchN(1, [#configuration, [...#configuration]])
		attributes?: [...close({
			crawler_arn?:  string
			database_arn?: string
			table_arn?:    string
		})]
		event_classes?: [...string]
		id?: string
		provider_details?: [...close({
			location?: string
			role_arn?: string
		})]
		region?:         string
		source_name!:    string
		source_version?: string
	})

	#configuration: close({
		crawler_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/crawler_configuration", [..._#defs."/$defs/configuration/$defs/crawler_configuration"]])
		provider_identity?: matchN(1, [_#defs."/$defs/configuration/$defs/provider_identity", [..._#defs."/$defs/configuration/$defs/provider_identity"]])
	})

	_#defs: "/$defs/configuration/$defs/crawler_configuration": close({
		role_arn!: string
	})

	_#defs: "/$defs/configuration/$defs/provider_identity": close({
		external_id!: string
		principal!:   string
	})
}
