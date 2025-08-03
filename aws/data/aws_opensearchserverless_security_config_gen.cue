package data

#aws_opensearchserverless_security_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_security_config")
	close({
		config_version?: string
		saml_options?: matchN(1, [#saml_options, [...#saml_options]])
		created_date?:       string
		description?:        string
		id!:                 string
		last_modified_date?: string
		region?:             string
		type?:               string
	})

	#saml_options: close({
		group_attribute?: string
		metadata?:        string
		session_timeout?: number
		user_attribute?:  string
	})
}
