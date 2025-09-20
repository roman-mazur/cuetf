package data

#aws_networkfirewall_firewall_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_firewall_policy")
	close({
		arn?:         string
		description?: string
		firewall_policy?: [...close({
			policy_variables?: [...close({
				rule_variables?: [...close({
					ip_set?: [...close({
						definition?: [...string]
					})]
					key?: string
				})]
			})]
			stateful_default_actions?: [...string]
			stateful_engine_options?: [...close({
				flow_timeouts?: [...close({
					tcp_idle_timeout_seconds?: number
				})]
				rule_order?:              string
				stream_exception_policy?: string
			})]
			stateful_rule_group_reference?: [...close({
				deep_threat_inspection?: string
				override?: [...close({
					action?: string
				})]
				priority?:     number
				resource_arn?: string
			})]
			stateless_custom_action?: [...close({
				action_definition?: [...close({
					publish_metric_action?: [...close({
						dimension?: [...close({
							value?: string
						})]
					})]
				})]
				action_name?: string
			})]
			stateless_default_actions?: [...string]
			stateless_fragment_default_actions?: [...string]
			stateless_rule_group_reference?: [...close({
				priority?:     number
				resource_arn?: string
			})]
			tls_inspection_configuration_arn?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name?:   string
		tags?: [string]: string
		update_token?: string
	})
}
