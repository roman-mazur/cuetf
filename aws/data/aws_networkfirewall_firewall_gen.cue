package data

#aws_networkfirewall_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_firewall")
	close({
		arn?:                                 string
		availability_zone_change_protection?: bool
		availability_zone_mapping?: [...close({
			availability_zone_id?: string
		})]
		delete_protection?: bool
		description?:       string
		enabled_analysis_types?: [...string]
		encryption_configuration?: [...close({
			key_id?: string
			type?:   string
		})]
		firewall_policy_arn?:               string
		firewall_policy_change_protection?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		firewall_status?: [...close({
			capacity_usage_summary?: [...close({
				cidrs?: [...close({
					available_cidr_count?: number
					ip_set_references?: [...close({
						resolved_cidr_count?: number
					})]
					utilized_cidr_count?: number
				})]
			})]
			configuration_sync_state_summary?: string
			status?:                           string
			sync_states?: [...close({
				attachment?: [...close({
					endpoint_id?:    string
					status?:         string
					status_message?: string
					subnet_id?:      string
				})]
				availability_zone?: string
			})]
			transit_gateway_attachment_sync_states?: [...close({
				attachment_id?:                     string
				status_message?:                    string
				transit_gateway_attachment_status?: string
			})]
		})]
		id?:                       string
		name?:                     string
		subnet_change_protection?: bool
		subnet_mapping?: [...close({
			subnet_id?: string
		})]
		tags?: [string]: string
		transit_gateway_id?:               string
		transit_gateway_owner_account_id?: string
		update_token?:                     string
		vpc_id?:                           string
	})
}
