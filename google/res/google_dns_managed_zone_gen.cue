package res

import "list"

#google_dns_managed_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dns_managed_zone")
	close({
		// The time that this resource was created on the server.
		// This is in RFC3339 text format.
		creation_time?: string

		// A textual description field. Defaults to 'Managed by
		// Terraform'.
		description?: string

		// The DNS name of this managed zone, for instance "example.com.".
		dns_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Set this true to delete all records in the zone.
		force_destroy?: bool
		id?:            string

		// A set of key/value label pairs to assign to this ManagedZone.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Unique identifier for the resource; defined by the server.
		managed_zone_id?: number

		// User assigned name for this resource.
		// Must be unique within the project.
		name!: string

		// Delegate your managed_zone to these virtual name servers;
		// defined by the server
		name_servers?: [...string]
		cloud_logging_config?: matchN(1, [#cloud_logging_config, list.MaxItems(1) & [...#cloud_logging_config]])
		dnssec_config?: matchN(1, [#dnssec_config, list.MaxItems(1) & [...#dnssec_config]])
		forwarding_config?: matchN(1, [#forwarding_config, list.MaxItems(1) & [...#forwarding_config]])
		peering_config?: matchN(1, [#peering_config, list.MaxItems(1) & [...#peering_config]])
		private_visibility_config?: matchN(1, [#private_visibility_config, list.MaxItems(1) & [...#private_visibility_config]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The zone's visibility: public zones are exposed to the
		// Internet,
		// while private zones are visible only to Virtual Private Cloud
		// resources. Default value: "public" Possible values:
		// ["private", "public"]
		visibility?: string
	})

	#cloud_logging_config: close({
		// If set, enable query logging for this ManagedZone. False by
		// default, making logging opt-in.
		enable_logging!: bool
	})

	#dnssec_config: close({
		// Identifies what kind of resource this is
		kind?: string
		default_key_specs?: matchN(1, [_#defs."/$defs/dnssec_config/$defs/default_key_specs", [..._#defs."/$defs/dnssec_config/$defs/default_key_specs"]])

		// Specifies the mechanism used to provide authenticated
		// denial-of-existence responses.
		// non_existence can only be updated when the state is 'off'.
		// Possible values: ["nsec", "nsec3"]
		non_existence?: string

		// Specifies whether DNSSEC is enabled, and what mode it is in
		// Possible values: ["off", "on", "transfer"]
		state?: string
	})

	#forwarding_config: close({
		target_name_servers!: matchN(1, [_#defs."/$defs/forwarding_config/$defs/target_name_servers", [_, ...] & [..._#defs."/$defs/forwarding_config/$defs/target_name_servers"]])
	})

	#peering_config: close({
		target_network!: matchN(1, [_#defs."/$defs/peering_config/$defs/target_network", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/peering_config/$defs/target_network"]])
	})

	#private_visibility_config: close({
		gke_clusters?: matchN(1, [_#defs."/$defs/private_visibility_config/$defs/gke_clusters", [..._#defs."/$defs/private_visibility_config/$defs/gke_clusters"]])
		networks?: matchN(1, [_#defs."/$defs/private_visibility_config/$defs/networks", [..._#defs."/$defs/private_visibility_config/$defs/networks"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/dnssec_config/$defs/default_key_specs": close({
		// String mnemonic specifying the DNSSEC algorithm of this key
		// Possible values: ["ecdsap256sha256", "ecdsap384sha384",
		// "rsasha1", "rsasha256", "rsasha512"]
		algorithm?: string

		// Length of the keys in bits
		key_length?: number

		// Specifies whether this is a key signing key (KSK) or a zone
		// signing key (ZSK). Key signing keys have the Secure Entry
		// Point flag set and, when active, will only be used to sign
		// resource record sets of type DNSKEY. Zone signing keys do
		// not have the Secure Entry Point flag set and will be used
		// to sign all other types of resource record sets. Possible
		// values: ["keySigning", "zoneSigning"]
		key_type?: string

		// Identifies what kind of resource this is
		kind?: string
	})

	_#defs: "/$defs/forwarding_config/$defs/target_name_servers": close({
		// Fully qualified domain name for the forwarding target.
		domain_name?: string

		// Forwarding path for this TargetNameServer. If unset or
		// 'default' Cloud DNS will make forwarding
		// decision based on address ranges, i.e. RFC1918 addresses go to
		// the VPC, Non-RFC1918 addresses go
		// to the Internet. When set to 'private', Cloud DNS will always
		// send queries through VPC for this target Possible values:
		// ["default", "private"]
		forwarding_path?: string

		// IPv4 address of a target name server.
		ipv4_address?: string
	})

	_#defs: "/$defs/peering_config/$defs/target_network": close({
		// The id or fully qualified URL of the VPC network to forward
		// queries to.
		// This should be formatted like
		// 'projects/{project}/global/networks/{network}' or
		// 'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}'
		network_url!: string
	})

	_#defs: "/$defs/private_visibility_config/$defs/gke_clusters": close({
		// The resource name of the cluster to bind this ManagedZone to.
		// This should be specified in the format like
		// 'projects/*/locations/*/clusters/*'
		gke_cluster_name!: string
	})

	_#defs: "/$defs/private_visibility_config/$defs/networks": close({
		// The id or fully qualified URL of the VPC network to bind to.
		// This should be formatted like
		// 'projects/{project}/global/networks/{network}' or
		// 'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}'
		network_url!: string
	})
}
