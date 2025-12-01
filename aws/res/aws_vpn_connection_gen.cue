package res

import "list"

#aws_vpn_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpn_connection")
	close({
		arn?:                            string
		core_network_arn?:               string
		core_network_attachment_arn?:    string
		customer_gateway_configuration?: string
		customer_gateway_id!:            string
		enable_acceleration?:            bool
		id?:                             string
		local_ipv4_network_cidr?:        string
		local_ipv6_network_cidr?:        string
		outside_ip_address_type?:        string
		preshared_key_arn?:              string
		preshared_key_storage?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		remote_ipv4_network_cidr?: string
		remote_ipv6_network_cidr?: string
		routes?: [...close({
			destination_cidr_block?: string
			source?:                 string
			state?:                  string
		})]
		static_routes_only?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_attachment_id?:           string
		transit_gateway_id?:                      string
		transport_transit_gateway_attachment_id?: string
		tunnel1_address?:                         string
		tunnel1_bgp_asn?:                         string
		tunnel1_bgp_holdtime?:                    number
		tunnel1_cgw_inside_address?:              string
		tunnel1_dpd_timeout_action?:              string
		tunnel1_dpd_timeout_seconds?:             number
		tunnel1_enable_tunnel_lifecycle_control?: bool
		tunnel1_ike_versions?: [...string]
		tunnel1_inside_cidr?:      string
		tunnel1_inside_ipv6_cidr?: string
		tunnel1_phase1_dh_group_numbers?: [...number]
		tunnel1_phase1_encryption_algorithms?: [...string]
		tunnel1_phase1_integrity_algorithms?: [...string]
		tunnel1_phase1_lifetime_seconds?: number
		tunnel1_phase2_dh_group_numbers?: [...number]
		tunnel1_phase2_encryption_algorithms?: [...string]
		tunnel1_phase2_integrity_algorithms?: [...string]
		tunnel1_log_options?: matchN(1, [#tunnel1_log_options, list.MaxItems(1) & [...#tunnel1_log_options]])
		tunnel2_log_options?: matchN(1, [#tunnel2_log_options, list.MaxItems(1) & [...#tunnel2_log_options]])
		tunnel1_phase2_lifetime_seconds?:         number
		tunnel1_preshared_key?:                   string
		tunnel1_rekey_fuzz_percentage?:           number
		tunnel1_rekey_margin_time_seconds?:       number
		tunnel1_replay_window_size?:              number
		tunnel1_startup_action?:                  string
		tunnel1_vgw_inside_address?:              string
		tunnel2_address?:                         string
		tunnel2_bgp_asn?:                         string
		tunnel2_bgp_holdtime?:                    number
		tunnel2_cgw_inside_address?:              string
		tunnel2_dpd_timeout_action?:              string
		tunnel2_dpd_timeout_seconds?:             number
		tunnel2_enable_tunnel_lifecycle_control?: bool
		tunnel2_ike_versions?: [...string]
		tunnel2_inside_cidr?:      string
		tunnel2_inside_ipv6_cidr?: string
		tunnel2_phase1_dh_group_numbers?: [...number]
		tunnel2_phase1_encryption_algorithms?: [...string]
		tunnel2_phase1_integrity_algorithms?: [...string]
		tunnel2_phase1_lifetime_seconds?: number
		tunnel2_phase2_dh_group_numbers?: [...number]
		tunnel2_phase2_encryption_algorithms?: [...string]
		tunnel2_phase2_integrity_algorithms?: [...string]
		tunnel2_phase2_lifetime_seconds?:   number
		tunnel2_preshared_key?:             string
		tunnel2_rekey_fuzz_percentage?:     number
		tunnel2_rekey_margin_time_seconds?: number
		tunnel2_replay_window_size?:        number
		tunnel2_startup_action?:            string
		tunnel2_vgw_inside_address?:        string
		tunnel_bandwidth?:                  string
		tunnel_inside_ip_version?:          string
		type!:                              string
		vgw_telemetry?: [...close({
			accepted_route_count?: number
			certificate_arn?:      string
			last_status_change?:   string
			outside_ip_address?:   string
			status?:               string
			status_message?:       string
		})]
		vpn_concentrator_id?: string
		vpn_gateway_id?:      string
	})

	#tunnel1_log_options: close({
		cloudwatch_log_options?: matchN(1, [_#defs."/$defs/tunnel1_log_options/$defs/cloudwatch_log_options", list.MaxItems(1) & [..._#defs."/$defs/tunnel1_log_options/$defs/cloudwatch_log_options"]])
	})

	#tunnel2_log_options: close({
		cloudwatch_log_options?: matchN(1, [_#defs."/$defs/tunnel2_log_options/$defs/cloudwatch_log_options", list.MaxItems(1) & [..._#defs."/$defs/tunnel2_log_options/$defs/cloudwatch_log_options"]])
	})

	_#defs: "/$defs/tunnel1_log_options/$defs/cloudwatch_log_options": close({
		log_enabled?:       bool
		log_group_arn?:     string
		log_output_format?: string
	})

	_#defs: "/$defs/tunnel2_log_options/$defs/cloudwatch_log_options": close({
		log_enabled?:       bool
		log_group_arn?:     string
		log_output_format?: string
	})
}
