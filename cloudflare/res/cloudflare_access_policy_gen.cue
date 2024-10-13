package res

import "list"

#cloudflare_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_access_policy")
	account_id?:                     string
	application_id?:                 string
	approval_required?:              bool
	decision!:                       string
	id?:                             string
	isolation_required?:             bool
	name!:                           string
	precedence?:                     number
	purpose_justification_prompt?:   string
	purpose_justification_required?: bool
	session_duration?:               string
	zone_id?:                        string
	approval_group?: #approval_group | [...#approval_group]
	connection_rules?: #connection_rules | list.MaxItems(1) & [...#connection_rules]
	exclude?: #exclude | [...#exclude]
	include?: #include | [_, ...] & [...#include]
	require?: #require | [...#require]

	#approval_group: {
		approvals_needed!: number
		email_addresses?: [...string]
		email_list_uuid?: string
	}

	#connection_rules: {
		ssh?: #connection_rules.#ssh | list.MaxItems(1) & [_, ...] & [...#connection_rules.#ssh]

		#ssh: usernames!: [...string]
	}

	#exclude: {
		any_valid_service_token?: bool
		auth_method?:             string
		certificate?:             bool
		common_name?:             string
		common_names?: [...string]
		device_posture?: [...string]
		email?: [...string]
		email_domain?: [...string]
		email_list?: [...string]
		everyone?: bool
		geo?: [...string]
		group?: [...string]
		ip?: [...string]
		ip_list?: [...string]
		login_method?: [...string]
		service_token?: [...string]
		auth_context?: #exclude.#auth_context | [...#exclude.#auth_context]
		azure?: #exclude.#azure | [...#exclude.#azure]
		external_evaluation?: #exclude.#external_evaluation | [...#exclude.#external_evaluation]
		github?: #exclude.#github | [...#exclude.#github]
		gsuite?: #exclude.#gsuite | [...#exclude.#gsuite]
		okta?: #exclude.#okta | [...#exclude.#okta]
		saml?: #exclude.#saml | [...#exclude.#saml]

		#auth_context: {
			ac_id!:                string
			id!:                   string
			identity_provider_id!: string
		}

		#azure: {
			id?: [...string]
			identity_provider_id?: string
		}

		#external_evaluation: {
			evaluate_url?: string
			keys_url?:     string
		}

		#github: {
			identity_provider_id?: string
			name?:                 string
			teams?: [...string]
		}

		#gsuite: {
			email?: [...string]
			identity_provider_id?: string
		}

		#okta: {
			identity_provider_id?: string
			name?: [...string]
		}

		#saml: {
			attribute_name?:       string
			attribute_value?:      string
			identity_provider_id?: string
		}
	}

	#include: {
		any_valid_service_token?: bool
		auth_method?:             string
		certificate?:             bool
		common_name?:             string
		common_names?: [...string]
		device_posture?: [...string]
		email?: [...string]
		email_domain?: [...string]
		email_list?: [...string]
		everyone?: bool
		geo?: [...string]
		group?: [...string]
		ip?: [...string]
		ip_list?: [...string]
		login_method?: [...string]
		service_token?: [...string]
		auth_context?: #include.#auth_context | [...#include.#auth_context]
		azure?: #include.#azure | [...#include.#azure]
		external_evaluation?: #include.#external_evaluation | [...#include.#external_evaluation]
		github?: #include.#github | [...#include.#github]
		gsuite?: #include.#gsuite | [...#include.#gsuite]
		okta?: #include.#okta | [...#include.#okta]
		saml?: #include.#saml | [...#include.#saml]

		#auth_context: {
			ac_id!:                string
			id!:                   string
			identity_provider_id!: string
		}

		#azure: {
			id?: [...string]
			identity_provider_id?: string
		}

		#external_evaluation: {
			evaluate_url?: string
			keys_url?:     string
		}

		#github: {
			identity_provider_id?: string
			name?:                 string
			teams?: [...string]
		}

		#gsuite: {
			email?: [...string]
			identity_provider_id?: string
		}

		#okta: {
			identity_provider_id?: string
			name?: [...string]
		}

		#saml: {
			attribute_name?:       string
			attribute_value?:      string
			identity_provider_id?: string
		}
	}

	#require: {
		any_valid_service_token?: bool
		auth_method?:             string
		certificate?:             bool
		common_name?:             string
		common_names?: [...string]
		device_posture?: [...string]
		email?: [...string]
		email_domain?: [...string]
		email_list?: [...string]
		everyone?: bool
		geo?: [...string]
		group?: [...string]
		ip?: [...string]
		ip_list?: [...string]
		login_method?: [...string]
		service_token?: [...string]
		auth_context?: #require.#auth_context | [...#require.#auth_context]
		azure?: #require.#azure | [...#require.#azure]
		external_evaluation?: #require.#external_evaluation | [...#require.#external_evaluation]
		github?: #require.#github | [...#require.#github]
		gsuite?: #require.#gsuite | [...#require.#gsuite]
		okta?: #require.#okta | [...#require.#okta]
		saml?: #require.#saml | [...#require.#saml]

		#auth_context: {
			ac_id!:                string
			id!:                   string
			identity_provider_id!: string
		}

		#azure: {
			id?: [...string]
			identity_provider_id?: string
		}

		#external_evaluation: {
			evaluate_url?: string
			keys_url?:     string
		}

		#github: {
			identity_provider_id?: string
			name?:                 string
			teams?: [...string]
		}

		#gsuite: {
			email?: [...string]
			identity_provider_id?: string
		}

		#okta: {
			identity_provider_id?: string
			name?: [...string]
		}

		#saml: {
			attribute_name?:       string
			attribute_value?:      string
			identity_provider_id?: string
		}
	}
}
