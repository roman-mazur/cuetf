package res

import "list"

#aws_opensearch_domain_saml_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_domain_saml_options")
	close({
		saml_options?: matchN(1, [#saml_options, list.MaxItems(1) & [...#saml_options]])
		timeouts?:    #timeouts
		domain_name!: string
		id?:          string
		region?:      string
	})

	#saml_options: close({
		idp?: matchN(1, [_#defs."/$defs/saml_options/$defs/idp", list.MaxItems(1) & [..._#defs."/$defs/saml_options/$defs/idp"]])
		enabled?:                 bool
		master_backend_role?:     string
		master_user_name?:        string
		roles_key?:               string
		session_timeout_minutes?: number
		subject_key?:             string
	})

	#timeouts: close({
		delete?: string
		update?: string
	})

	_#defs: "/$defs/saml_options/$defs/idp": close({
		entity_id!:        string
		metadata_content!: string
	})
}
