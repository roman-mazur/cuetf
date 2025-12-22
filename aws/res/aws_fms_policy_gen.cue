package res

import "list"

#aws_fms_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_fms_policy")
	close({
		arn?:                                string
		delete_all_policy_resources?:        bool
		delete_unused_fm_managed_resources?: bool
		description?:                        string
		exclude_resource_tags!:              bool
		id?:                                 string
		name!:                               string
		policy_update_token?:                string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		remediation_enabled?: bool
		exclude_map?: matchN(1, [#exclude_map, list.MaxItems(1) & [...#exclude_map]])
		resource_set_ids?: [...string]
		resource_tag_logical_operator?: string
		resource_tags?: [string]: string
		resource_type?: string
		resource_type_list?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		include_map?: matchN(1, [#include_map, list.MaxItems(1) & [...#include_map]])
		security_service_policy_data!: matchN(1, [#security_service_policy_data, list.MaxItems(1) & [_, ...] & [...#security_service_policy_data]])
	})

	#exclude_map: close({
		account?: [...string]
		orgunit?: [...string]
	})

	#include_map: close({
		account?: [...string]
		orgunit?: [...string]
	})

	#security_service_policy_data: close({
		policy_option?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option", list.MaxItems(1) & [..._#defs."/$defs/security_service_policy_data/$defs/policy_option"]])
		managed_service_data?: string
		type!:                 string
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option": close({
		network_acl_common_policy?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy", list.MaxItems(1) & [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy"]])
		network_firewall_policy?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_firewall_policy", list.MaxItems(1) & [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_firewall_policy"]])
		third_party_firewall_policy?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/third_party_firewall_policy", list.MaxItems(1) & [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/third_party_firewall_policy"]])
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy": close({
		network_acl_entry_set?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set", list.MaxItems(1) & [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set"]])
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set": close({
		first_entry?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry", [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry"]])
		last_entry?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry", [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry"]])
		force_remediate_for_first_entries!: bool
		force_remediate_for_last_entries!:  bool
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry": close({
		icmp_type_code?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry/$defs/icmp_type_code", [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry/$defs/icmp_type_code"]])
		cidr_block?:      string
		egress!:          bool
		ipv6_cidr_block?: string
		protocol!:        string
		rule_action!:     string
		port_range?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry/$defs/port_range", [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry/$defs/port_range"]])
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry/$defs/icmp_type_code": close({
		code?: number
		type?: number
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/first_entry/$defs/port_range": close({
		from?: number
		to?:   number
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry": close({
		icmp_type_code?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry/$defs/icmp_type_code", [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry/$defs/icmp_type_code"]])
		cidr_block?:      string
		egress!:          bool
		ipv6_cidr_block?: string
		protocol!:        string
		rule_action!:     string
		port_range?: matchN(1, [_#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry/$defs/port_range", [..._#defs."/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry/$defs/port_range"]])
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry/$defs/icmp_type_code": close({
		code?: number
		type?: number
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_acl_common_policy/$defs/network_acl_entry_set/$defs/last_entry/$defs/port_range": close({
		from?: number
		to?:   number
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/network_firewall_policy": close({
		firewall_deployment_model?: string
	})

	_#defs: "/$defs/security_service_policy_data/$defs/policy_option/$defs/third_party_firewall_policy": close({
		firewall_deployment_model?: string
	})
}
