package res

import "list"

#aws_finspace_kx_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_finspace_kx_environment")
	close({
		arn?: string
		availability_zones?: [...string]
		custom_dns_configuration?: matchN(1, [#custom_dns_configuration, [...#custom_dns_configuration]])
		timeouts?:                  #timeouts
		created_timestamp?:         string
		description?:               string
		id?:                        string
		infrastructure_account_id?: string
		transit_gateway_configuration?: matchN(1, [#transit_gateway_configuration, list.MaxItems(1) & [...#transit_gateway_configuration]])
		kms_key_id!:              string
		last_modified_timestamp?: string
		name!:                    string
		region?:                  string
		status?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#custom_dns_configuration: close({
		custom_dns_server_ip!:   string
		custom_dns_server_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#transit_gateway_configuration: close({
		routable_cidr_space!: string
		transit_gateway_id!:  string
		attachment_network_acl_configuration?: matchN(1, [_#defs."/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration", list.MaxItems(100) & [..._#defs."/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration"]])
	})

	_#defs: "/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration": close({
		cidr_block!:  string
		protocol!:    string
		rule_action!: string
		rule_number!: number
		icmp_type_code?: matchN(1, [_#defs."/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration/$defs/icmp_type_code", list.MaxItems(1) & [..._#defs."/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration/$defs/icmp_type_code"]])
		port_range?: matchN(1, [_#defs."/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration/$defs/port_range", list.MaxItems(1) & [..._#defs."/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration/$defs/port_range"]])
	})

	_#defs: "/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration/$defs/icmp_type_code": close({
		code!: number
		type!: number
	})

	_#defs: "/$defs/transit_gateway_configuration/$defs/attachment_network_acl_configuration/$defs/port_range": close({
		from!: number
		to!:   number
	})
}
