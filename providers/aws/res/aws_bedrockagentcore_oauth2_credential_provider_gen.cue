package res

aws_bedrockagentcore_oauth2_credential_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_oauth2_credential_provider")
	close({
		oauth2_provider_config?: matchN(1, [#oauth2_provider_config, [...#oauth2_provider_config]])
		timeouts?:     #timeouts
		callback_url?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		client_secret_arn?: [...close({
			secret_arn?: string
		})]
		credential_provider_arn?:    string
		credential_provider_vendor!: string
		name!:                       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#oauth2_provider_config: close({
		atlassian_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/atlassian_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/atlassian_oauth2_provider_config"]])
		custom_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config"]])
		github_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config"]])
		google_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config"]])
		included_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/included_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/included_oauth2_provider_config"]])
		linkedin_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/linkedin_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/linkedin_oauth2_provider_config"]])
		microsoft_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config"]])
		salesforce_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config"]])
		slack_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/atlassian_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/atlassian_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/atlassian_oauth2_provider_config/$defs/client_secret_config"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/atlassian_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/client_secret_config"]])
		oauth_discovery?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery"]])
		on_behalf_of_token_exchange_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/on_behalf_of_token_exchange_config", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/on_behalf_of_token_exchange_config"]])
		private_endpoint?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint"]])
		private_endpoint_override?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override"]])
		private_key_jwt_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config"]])
		client_authentication_method?:  string
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery": close({
		authorization_server_metadata?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery/$defs/authorization_server_metadata", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery/$defs/authorization_server_metadata"]])
		discovery_url?: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery/$defs/authorization_server_metadata": close({
		authorization_endpoint!: string
		issuer!:                 string
		response_types?: [...string]
		token_endpoint!: string
		token_endpoint_auth_methods?: [...string]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/on_behalf_of_token_exchange_config": close({
		token_exchange_grant_type_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/on_behalf_of_token_exchange_config/$defs/token_exchange_grant_type_config", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/on_behalf_of_token_exchange_config/$defs/token_exchange_grant_type_config"]])
		grant_type!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/on_behalf_of_token_exchange_config/$defs/token_exchange_grant_type_config": close({
		actor_token_content!: string
		actor_token_scopes?: [...string]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint": close({
		managed_vpc_resource?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint/$defs/managed_vpc_resource", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint/$defs/managed_vpc_resource"]])
		self_managed_lattice_resource?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint/$defs/self_managed_lattice_resource", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint/$defs/self_managed_lattice_resource"]])
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint/$defs/managed_vpc_resource": close({
		endpoint_ip_address_type!: string
		routing_domain?:           string
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		tags?: [string]: string
		vpc_identifier!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint/$defs/self_managed_lattice_resource": close({
		resource_configuration_identifier?: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override": close({
		private_endpoint?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint"]])
		domain!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint": close({
		managed_vpc_resource?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint/$defs/managed_vpc_resource", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint/$defs/managed_vpc_resource"]])
		self_managed_lattice_resource?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint/$defs/self_managed_lattice_resource", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint/$defs/self_managed_lattice_resource"]])
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint/$defs/managed_vpc_resource": close({
		endpoint_ip_address_type!: string
		routing_domain?:           string
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		tags?: [string]: string
		vpc_identifier!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_endpoint_override/$defs/private_endpoint/$defs/self_managed_lattice_resource": close({
		resource_configuration_identifier?: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config": close({
		private_key_source?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config/$defs/private_key_source", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config/$defs/private_key_source"]])
		additional_header_claims?: [string]:  string
		additional_payload_claims?: [string]: string
		signing_algorithm?: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config/$defs/private_key_source": close({
		kms_key_source?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config/$defs/private_key_source/$defs/kms_key_source", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config/$defs/private_key_source/$defs/kms_key_source"]])
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/private_key_jwt_config/$defs/private_key_source/$defs/kms_key_source": close({
		kms_key_arn!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config/$defs/client_secret_config"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config/$defs/client_secret_config"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/included_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/included_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/included_oauth2_provider_config/$defs/client_secret_config"]])
		authorization_endpoint?:        string
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		issuer?:                        string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
		token_endpoint?: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/included_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/linkedin_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/linkedin_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/linkedin_oauth2_provider_config/$defs/client_secret_config"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/linkedin_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config/$defs/client_secret_config"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
		tenant_id?:            string
		tenant_id_wo?:         string
		tenant_id_wo_version?: number
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config/$defs/client_secret_config"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config": close({
		client_secret_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config/$defs/client_secret_config", [..._#defs."/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config/$defs/client_secret_config"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_source?:          string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
				token_endpoint_auth_methods?: [...string]
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config/$defs/client_secret_config": close({
		json_key!:  string
		secret_id!: string
	})
}
