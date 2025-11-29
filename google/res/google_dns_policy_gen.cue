package res

import "list"

#google_dns_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dns_policy")
	close({
		// A textual description field. Defaults to 'Managed by
		// Terraform'.
		description?: string
		alternative_name_server_config?: matchN(1, [#alternative_name_server_config, list.MaxItems(1) & [...#alternative_name_server_config]])

		// Allows networks bound to this policy to receive DNS queries
		// sent
		// by VMs or applications over VPN connections. When enabled, a
		// virtual IP address will be allocated from each of the
		// sub-networks
		// that are bound to this policy.
		enable_inbound_forwarding?: bool

		// Controls whether logging is enabled for the networks bound to
		// this policy.
		// Defaults to no logging if not set.
		enable_logging?: bool
		id?:             string
		dns64_config?: matchN(1, [#dns64_config, list.MaxItems(1) & [...#dns64_config]])
		networks?: matchN(1, [#networks, [...#networks]])
		timeouts?: #timeouts

		// User assigned name for this policy.
		name!:    string
		project?: string
	})

	#alternative_name_server_config: close({
		target_name_servers!: matchN(1, [_#defs."/$defs/alternative_name_server_config/$defs/target_name_servers", [_, ...] & [..._#defs."/$defs/alternative_name_server_config/$defs/target_name_servers"]])
	})

	#dns64_config: close({
		scope!: matchN(1, [_#defs."/$defs/dns64_config/$defs/scope", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/dns64_config/$defs/scope"]])
	})

	#networks: close({
		// The id or fully qualified URL of the VPC network to forward
		// queries to.
		// This should be formatted like
		// 'projects/{project}/global/networks/{network}' or
		// 'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}'
		network_url!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/alternative_name_server_config/$defs/target_name_servers": close({
		// Forwarding path for this TargetNameServer. If unset or
		// 'default' Cloud DNS will make forwarding
		// decision based on address ranges, i.e. RFC1918 addresses go to
		// the VPC, Non-RFC1918 addresses go
		// to the Internet. When set to 'private', Cloud DNS will always
		// send queries through VPC for this target Possible values:
		// ["default", "private"]
		forwarding_path?: string

		// IPv4 address to forward to.
		ipv4_address!: string
	})

	_#defs: "/$defs/dns64_config/$defs/scope": close({
		// Controls whether DNS64 is enabled globally at the network
		// level.
		all_queries?: bool
	})
}
