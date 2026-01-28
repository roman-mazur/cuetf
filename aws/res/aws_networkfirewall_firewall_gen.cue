package res

import "list"

#aws_networkfirewall_firewall: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkfirewall_firewall")
	close({
		arn?:                                 string
		availability_zone_change_protection?: bool
		delete_protection?:                   bool
		description?:                         string
		enabled_analysis_types?: [...string]
		firewall_policy_arn!:               string
		firewall_policy_change_protection?: bool
		firewall_status?: [...close({
			sync_states?: [...close({
				attachment?: [...close({
					endpoint_id?: string
					subnet_id?:   string
				})]
				availability_zone?: string
			})]
			transit_gateway_attachment_sync_states?: [...close({
				attachment_id?: string
			})]
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		availability_zone_mapping?: matchN(1, [#availability_zone_mapping, [...#availability_zone_mapping]])
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		subnet_change_protection?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_id?:               string
		transit_gateway_owner_account_id?: string
		update_token?:                     string
		subnet_mapping?: matchN(1, [#subnet_mapping, [...#subnet_mapping]])
		vpc_id?:   string
		timeouts?: #timeouts
	})

	#availability_zone_mapping: close({
		availability_zone_id!: string
	})

	#encryption_configuration: close({
		key_id?: string
		type!:   string
	})

	#subnet_mapping: close({
		ip_address_type?: string
		subnet_id!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
