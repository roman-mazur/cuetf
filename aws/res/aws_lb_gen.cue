package res

import "list"

#aws_lb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lb")
	close({
		arn?: string
		access_logs?: matchN(1, [#access_logs, list.MaxItems(1) & [...#access_logs]])
		arn_suffix?:                       string
		client_keep_alive?:                number
		customer_owned_ipv4_pool?:         string
		desync_mitigation_mode?:           string
		dns_name?:                         string
		dns_record_client_routing_policy?: string
		drop_invalid_header_fields?:       bool
		enable_cross_zone_load_balancing?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                                       string
		enable_deletion_protection?:                                   bool
		enable_http2?:                                                 bool
		enable_tls_version_and_cipher_suite_headers?:                  bool
		enable_waf_fail_open?:                                         bool
		enable_xff_client_port?:                                       bool
		enable_zonal_shift?:                                           bool
		enforce_security_group_inbound_rules_on_private_link_traffic?: string
		id?:                                                           string
		idle_timeout?:                                                 number
		internal?:                                                     bool
		connection_logs?: matchN(1, [#connection_logs, list.MaxItems(1) & [...#connection_logs]])
		ip_address_type?:                        string
		load_balancer_type?:                     string
		name?:                                   string
		name_prefix?:                            string
		preserve_host_header?:                   bool
		secondary_ips_auto_assigned_per_subnet?: number
		security_groups?: [...string]
		subnets?: [...string]
		health_check_logs?: matchN(1, [#health_check_logs, list.MaxItems(1) & [...#health_check_logs]])
		tags?: [string]:     string
		tags_all?: [string]: string
		ipam_pools?: matchN(1, [#ipam_pools, list.MaxItems(1) & [...#ipam_pools]])
		vpc_id?: string
		minimum_load_balancer_capacity?: matchN(1, [#minimum_load_balancer_capacity, list.MaxItems(1) & [...#minimum_load_balancer_capacity]])
		subnet_mapping?: matchN(1, [#subnet_mapping, [...#subnet_mapping]])
		timeouts?:                   #timeouts
		xff_header_processing_mode?: string
		zone_id?:                    string
	})

	#access_logs: close({
		bucket!:  string
		enabled?: bool
		prefix?:  string
	})

	#connection_logs: close({
		bucket!:  string
		enabled?: bool
		prefix?:  string
	})

	#health_check_logs: close({
		bucket!:  string
		enabled?: bool
		prefix?:  string
	})

	#ipam_pools: close({
		ipv4_ipam_pool_id!: string
	})

	#minimum_load_balancer_capacity: close({
		capacity_units!: number
	})

	#subnet_mapping: close({
		allocation_id?:        string
		ipv6_address?:         string
		outpost_id?:           string
		private_ipv4_address?: string
		subnet_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
