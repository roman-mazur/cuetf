package res

#aws_ec2_network_insights_analysis: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_network_insights_analysis")
	close({
		alternate_path_hints?: [...close({
			component_arn?: string
			component_id?:  string
		})]
		arn?: string
		explanations?: [...close({
			acl?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			acl_rule?: [...close({
				cidr?:   string
				egress?: bool
				port_range?: [...close({
					from?: number
					to?:   number
				})]
				protocol?:    string
				rule_action?: string
				rule_number?: number
			})]
			address?: string
			addresses?: [...string]
			attached_to?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			availability_zones?: [...string]
			cidrs?: [...string]
			classic_load_balancer_listener?: [...close({
				instance_port?:      number
				load_balancer_port?: number
			})]
			component?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			customer_gateway?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			destination?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			destination_vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			direction?: string
			elastic_load_balancer_listener?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			explanation_code?: string
			ingress_route_table?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			internet_gateway?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			load_balancer_arn?:           string
			load_balancer_listener_port?: number
			load_balancer_target_group?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			load_balancer_target_groups?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			load_balancer_target_port?: number
			missing_component?:         string
			nat_gateway?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			network_interface?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			packet_field?: string
			port?:         number
			port_ranges?: [...close({
				from?: number
				to?:   number
			})]
			prefix_list?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			protocols?: [...string]
			route_table?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			route_table_route?: [...close({
				destination_cidr?:                string
				destination_prefix_list_id?:      string
				egress_only_internet_gateway_id?: string
				gateway_id?:                      string
				instance_id?:                     string
				nat_gateway_id?:                  string
				network_interface_id?:            string
				origin?:                          string
				transit_gateway_id?:              string
				vpc_peering_connection_id?:       string
			})]
			security_group?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			security_group_rule?: [...close({
				cidr?:      string
				direction?: string
				port_range?: [...close({
					from?: number
					to?:   number
				})]
				prefix_list_id?:    string
				protocol?:          string
				security_group_id?: string
			})]
			security_groups?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			source_vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			state?: string
			subnet?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			subnet_route_table?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway_attachment?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway_route_table?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway_route_table_route?: [...close({
				attachment_id?:    string
				destination_cidr?: string
				prefix_list_id?:   string
				resource_id?:      string
				resource_type?:    string
				route_origin?:     string
				state?:            string
			})]
			vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			vpc_endpoint?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			vpc_peering_connection?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			vpn_connection?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			vpn_gateway?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
		})]
		filter_in_arns?: [...string]
		forward_path_components?: [...close({
			acl_rule?: [...close({
				cidr?:   string
				egress?: bool
				port_range?: [...close({
					from?: number
					to?:   number
				})]
				protocol?:    string
				rule_action?: string
				rule_number?: number
			})]
			additional_details?: [...close({
				additional_detail_type?: string
				component?: [...close({
					arn?:  string
					id?:   string
					name?: string
				})]
			})]
			attached_to?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			component?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			destination_vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			inbound_header?: [...close({
				destination_addresses?: [...string]
				destination_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
				protocol?: string
				source_addresses?: [...string]
				source_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
			})]
			outbound_header?: [...close({
				destination_addresses?: [...string]
				destination_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
				protocol?: string
				source_addresses?: [...string]
				source_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
			})]
			route_table_route?: [...close({
				destination_cidr?:                string
				destination_prefix_list_id?:      string
				egress_only_internet_gateway_id?: string
				gateway_id?:                      string
				instance_id?:                     string
				nat_gateway_id?:                  string
				network_interface_id?:            string
				origin?:                          string
				transit_gateway_id?:              string
				vpc_peering_connection_id?:       string
			})]
			security_group_rule?: [...close({
				cidr?:      string
				direction?: string
				port_range?: [...close({
					from?: number
					to?:   number
				})]
				prefix_list_id?:    string
				protocol?:          string
				security_group_id?: string
			})]
			sequence_number?: number
			source_vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			subnet?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway_route_table_route?: [...close({
				attachment_id?:    string
				destination_cidr?: string
				prefix_list_id?:   string
				resource_id?:      string
				resource_type?:    string
				route_origin?:     string
				state?:            string
			})]
			vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
		})]
		id?:                       string
		network_insights_path_id!: string
		path_found?:               bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		return_path_components?: [...close({
			acl_rule?: [...close({
				cidr?:   string
				egress?: bool
				port_range?: [...close({
					from?: number
					to?:   number
				})]
				protocol?:    string
				rule_action?: string
				rule_number?: number
			})]
			additional_details?: [...close({
				additional_detail_type?: string
				component?: [...close({
					arn?:  string
					id?:   string
					name?: string
				})]
			})]
			attached_to?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			component?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			destination_vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			inbound_header?: [...close({
				destination_addresses?: [...string]
				destination_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
				protocol?: string
				source_addresses?: [...string]
				source_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
			})]
			outbound_header?: [...close({
				destination_addresses?: [...string]
				destination_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
				protocol?: string
				source_addresses?: [...string]
				source_port_ranges?: [...close({
					from?: number
					to?:   number
				})]
			})]
			route_table_route?: [...close({
				destination_cidr?:                string
				destination_prefix_list_id?:      string
				egress_only_internet_gateway_id?: string
				gateway_id?:                      string
				instance_id?:                     string
				nat_gateway_id?:                  string
				network_interface_id?:            string
				origin?:                          string
				transit_gateway_id?:              string
				vpc_peering_connection_id?:       string
			})]
			security_group_rule?: [...close({
				cidr?:      string
				direction?: string
				port_range?: [...close({
					from?: number
					to?:   number
				})]
				prefix_list_id?:    string
				protocol?:          string
				security_group_id?: string
			})]
			sequence_number?: number
			source_vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			subnet?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			transit_gateway_route_table_route?: [...close({
				attachment_id?:    string
				destination_cidr?: string
				prefix_list_id?:   string
				resource_id?:      string
				resource_type?:    string
				route_origin?:     string
				state?:            string
			})]
			vpc?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
		})]
		start_date?:     string
		status?:         string
		status_message?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		wait_for_completion?: bool
		warning_message?:     string
	})
}
