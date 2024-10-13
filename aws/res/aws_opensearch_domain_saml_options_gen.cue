package res

import "list"

#aws_opensearch_domain_saml_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearch_domain_saml_options")
	domain_name!: string
	id?:          string
	saml_options?: #saml_options | list.MaxItems(1) & [...#saml_options]
	timeouts?: #timeouts

	#saml_options: {
		enabled?:                 bool
		master_backend_role?:     string
		master_user_name?:        string
		roles_key?:               string
		session_timeout_minutes?: number
		subject_key?:             string
		idp?: #saml_options.#idp | list.MaxItems(1) & [...#saml_options.#idp]

		#idp: {
			entity_id!:        string
			metadata_content!: string
		}
	}

	#timeouts: {
		delete?: string
		update?: string
	}
}
