package res

import "list"

#aws_verifiedaccess_trust_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_verifiedaccess_trust_provider")
	description?:                string
	device_trust_provider_type?: string
	id?:                         string
	policy_reference_name!:      string
	tags?: [string]: string
	tags_all?: [string]: string
	trust_provider_type!:      string
	user_trust_provider_type?: string
	device_options?: #device_options | list.MaxItems(1) & [...#device_options]
	oidc_options?: #oidc_options | list.MaxItems(1) & [...#oidc_options]
	timeouts?: #timeouts

	#device_options: tenant_id?: string

	#oidc_options: {
		authorization_endpoint?: string
		client_id?:              string
		client_secret!:          string
		issuer?:                 string
		scope?:                  string
		token_endpoint?:         string
		user_info_endpoint?:     string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
