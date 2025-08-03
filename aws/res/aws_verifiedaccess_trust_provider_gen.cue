package res

import "list"

#aws_verifiedaccess_trust_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedaccess_trust_provider")
	close({
		description?:                string
		device_trust_provider_type?: string
		device_options?: matchN(1, [#device_options, list.MaxItems(1) & [...#device_options]])
		native_application_oidc_options?: matchN(1, [#native_application_oidc_options, list.MaxItems(1) & [...#native_application_oidc_options]])
		oidc_options?: matchN(1, [#oidc_options, list.MaxItems(1) & [...#oidc_options]])
		id?: string
		sse_specification?: matchN(1, [#sse_specification, list.MaxItems(1) & [...#sse_specification]])
		policy_reference_name!: string
		region?:                string
		tags?: [string]:     string
		tags_all?: [string]: string
		trust_provider_type!:      string
		user_trust_provider_type?: string
		timeouts?:                 #timeouts
	})

	#device_options: close({
		tenant_id?: string
	})

	#native_application_oidc_options: close({
		authorization_endpoint?:      string
		client_id?:                   string
		client_secret!:               string
		issuer?:                      string
		public_signing_key_endpoint?: string
		scope?:                       string
		token_endpoint?:              string
		user_info_endpoint?:          string
	})

	#oidc_options: close({
		authorization_endpoint?: string
		client_id?:              string
		client_secret!:          string
		issuer?:                 string
		scope?:                  string
		token_endpoint?:         string
		user_info_endpoint?:     string
	})

	#sse_specification: close({
		customer_managed_key_enabled?: bool
		kms_key_arn?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
