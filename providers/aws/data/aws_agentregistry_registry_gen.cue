package data

aws_agentregistry_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_agentregistry_registry")
	close({
		approval_configuration?: [...close({
			auto_approval_rules?: [...string]
		})]
		created_at?:  string
		description?: string
		discovery_configuration?: [...close({
			authorizer_configuration?: [...close({
				custom_jwt_authorizer?: [...close({
					allowed_audience?: [...string]
					allowed_clients?: [...string]
					allowed_scopes?: [...string]
					custom_claim?: [...close({
						authorizing_claim_match_value?: [...close({
							claim_match_operator?: string
							claim_match_value?: [...close({
								match_value_string?: string
								match_value_string_list?: [...string]
							})]
						})]
						inbound_token_claim_name?:       string
						inbound_token_claim_value_type?: string
					})]
					discovery_url?: string
					private_endpoint?: [...close({
						managed_vpc_resource?: [...close({
							endpoint_ip_address_type?: string
							routing_domain?:           string
							security_group_ids?: [...string]
							subnet_ids?: [...string]
							tags?: [string]: string
							vpc_identifier?: string
						})]
						self_managed_lattice_resource?: [...close({
							resource_configuration_identifier?: string
						})]
					})]
					private_endpoint_override?: [...close({
						domain?: string
						private_endpoint?: [...close({
							managed_vpc_resource?: [...close({
								endpoint_ip_address_type?: string
								routing_domain?:           string
								security_group_ids?: [...string]
								subnet_ids?: [...string]
								tags?: [string]: string
								vpc_identifier?: string
							})]
							self_managed_lattice_resource?: [...close({
								resource_configuration_identifier?: string
							})]
						})]
					})]
				})]
			})]
			authorizer_type?: string
		})]
		encryption_configuration?: [...close({
			kms_key_arn?: string
		})]
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		registry_arn?: string
		registry_id!:  string
		status?:       string
		tags?: [string]: string
		updated_at?: string
	})
}
