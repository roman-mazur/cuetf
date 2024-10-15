package res

#aws_opensearchserverless_security_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_security_config")
	config_version?: string
	description?:    string
	id?:             string
	name!:           string
	type!:           string
	saml_options?:   #saml_options

	#saml_options: {
		group_attribute?: string
		metadata!:        string
		session_timeout?: number
		user_attribute?:  string
	}
}
