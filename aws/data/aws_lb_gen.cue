package data

#aws_lb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb")
	access_logs?: [...{
		bucket?:  string
		enabled?: bool
		prefix?:  string
	}]
	arn?:               string
	arn_suffix?:        string
	client_keep_alive?: number
	connection_logs?: [...{
		bucket?:  string
		enabled?: bool
		prefix?:  string
	}]
	customer_owned_ipv4_pool?:                                     string
	desync_mitigation_mode?:                                       string
	dns_name?:                                                     string
	dns_record_client_routing_policy?:                             string
	drop_invalid_header_fields?:                                   bool
	enable_cross_zone_load_balancing?:                             bool
	enable_deletion_protection?:                                   bool
	enable_http2?:                                                 bool
	enable_tls_version_and_cipher_suite_headers?:                  bool
	enable_waf_fail_open?:                                         bool
	enable_xff_client_port?:                                       bool
	enforce_security_group_inbound_rules_on_private_link_traffic?: string
	id?:                                                           string
	idle_timeout?:                                                 number
	internal?:                                                     bool
	ip_address_type?:                                              string
	load_balancer_type?:                                           string
	name?:                                                         string
	preserve_host_header?:                                         bool
	security_groups?: [...string]
	subnet_mapping?: [...{
		allocation_id?:        string
		ipv6_address?:         string
		outpost_id?:           string
		private_ipv4_address?: string
		subnet_id?:            string
	}]
	subnets?: [...string]
	tags?: [string]: string
	vpc_id?:                     string
	xff_header_processing_mode?: string
	zone_id?:                    string
	timeouts?:                   #timeouts

	#timeouts: read?: string
}
