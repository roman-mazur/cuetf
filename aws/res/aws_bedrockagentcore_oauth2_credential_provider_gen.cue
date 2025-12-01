package res

#aws_bedrockagentcore_oauth2_credential_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_oauth2_credential_provider")
	close({
		client_secret_arn?: [...close({
			secret_arn?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		credential_provider_arn?:    string
		credential_provider_vendor!: string
		name!:                       string
		oauth2_provider_config?: matchN(1, [#oauth2_provider_config, [...#oauth2_provider_config]])
	})

	#oauth2_provider_config: close({
		custom_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config"]])
		github_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config"]])
		google_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config"]])
		microsoft_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config"]])
		salesforce_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config"]])
		slack_oauth2_provider_config?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config", [..._#defs."/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config"]])
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config": close({
		oauth_discovery?: matchN(1, [_#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery", [..._#defs."/$defs/oauth2_provider_config/$defs/custom_oauth2_provider_config/$defs/oauth_discovery"]])
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_wo?:              string
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
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/github_oauth2_provider_config": close({
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/google_oauth2_provider_config": close({
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/microsoft_oauth2_provider_config": close({
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/salesforce_oauth2_provider_config": close({
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
			})]
			discovery_url?: string
		})]
	})

	_#defs: "/$defs/oauth2_provider_config/$defs/slack_oauth2_provider_config": close({
		client_credentials_wo_version?: number
		client_id?:                     string
		client_id_wo?:                  string
		client_secret?:                 string
		client_secret_wo?:              string
		oauth_discovery?: [...close({
			authorization_server_metadata?: [...close({
				authorization_endpoint?: string
				issuer?:                 string
				response_types?: [...string]
				token_endpoint?: string
			})]
			discovery_url?: string
		})]
	})
}
