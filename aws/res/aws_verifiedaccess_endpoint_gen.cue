package res

import "list"

#aws_verifiedaccess_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedaccess_endpoint")
	close({
		application_domain?:       string
		attachment_type!:          string
		description?:              string
		device_validation_domain?: string
		domain_certificate_arn?:   string
		endpoint_domain?:          string
		endpoint_domain_prefix?:   string
		endpoint_type!:            string
		id?:                       string
		policy_document?:          string
		region?:                   string
		cidr_options?: matchN(1, [#cidr_options, list.MaxItems(1) & [...#cidr_options]])
		security_group_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		verified_access_group_id!:    string
		verified_access_instance_id?: string
		load_balancer_options?: matchN(1, [#load_balancer_options, list.MaxItems(1) & [...#load_balancer_options]])
		network_interface_options?: matchN(1, [#network_interface_options, list.MaxItems(1) & [...#network_interface_options]])
		rds_options?: matchN(1, [#rds_options, list.MaxItems(1) & [...#rds_options]])
		sse_specification?: matchN(1, [#sse_specification, list.MaxItems(1) & [...#sse_specification]])
		timeouts?: #timeouts
	})

	#cidr_options: close({
		port_range?: matchN(1, [_#defs."/$defs/cidr_options/$defs/port_range", [_, ...] & [..._#defs."/$defs/cidr_options/$defs/port_range"]])
		cidr!:     string
		protocol?: string
		subnet_ids?: [...string]
	})

	#load_balancer_options: close({
		port_range?: matchN(1, [_#defs."/$defs/load_balancer_options/$defs/port_range", [..._#defs."/$defs/load_balancer_options/$defs/port_range"]])
		load_balancer_arn?: string
		port?:              number
		protocol?:          string
		subnet_ids?: [...string]
	})

	#network_interface_options: close({
		port_range?: matchN(1, [_#defs."/$defs/network_interface_options/$defs/port_range", [..._#defs."/$defs/network_interface_options/$defs/port_range"]])
		network_interface_id?: string
		port?:                 number
		protocol?:             string
	})

	#rds_options: close({
		port?:                number
		protocol?:            string
		rds_db_cluster_arn?:  string
		rds_db_instance_arn?: string
		rds_db_proxy_arn?:    string
		rds_endpoint?:        string
		subnet_ids?: [...string]
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

	_#defs: "/$defs/cidr_options/$defs/port_range": close({
		from_port!: number
		to_port!:   number
	})

	_#defs: "/$defs/load_balancer_options/$defs/port_range": close({
		from_port!: number
		to_port!:   number
	})

	_#defs: "/$defs/network_interface_options/$defs/port_range": close({
		from_port!: number
		to_port!:   number
	})
}
