package res

import "list"

#google_compute_interconnect_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_interconnect_attachment")
	close({
		// Whether the VLAN attachment is enabled or disabled. When using
		// PARTNER type this will Pre-Activate the interconnect attachment
		admin_enabled?: bool

		// URL of the AttachmentGroup that includes this Attachment.
		attachment_group?: string

		// Provisioned bandwidth capacity for the interconnect attachment.
		// For attachments of type DEDICATED, the user can set the
		// bandwidth.
		// For attachments of type PARTNER, the Google Partner that is
		// operating the interconnect must set the bandwidth.
		// Output only for PARTNER type, mutable for PARTNER_PROVIDER and
		// DEDICATED,
		// Defaults to BPS_10G Possible values: ["BPS_50M", "BPS_100M",
		// "BPS_200M", "BPS_300M", "BPS_400M", "BPS_500M", "BPS_1G",
		// "BPS_2G", "BPS_5G", "BPS_10G", "BPS_20G", "BPS_50G",
		// "BPS_100G", "BPS_400G"]
		bandwidth?: string

		// Single IPv4 address + prefix length to be configured on the
		// cloud router interface for this
		// interconnect attachment. Example: 203.0.113.1/29
		candidate_cloud_router_ip_address?: string

		// Single IPv6 address + prefix length to be configured on the
		// cloud router interface for this
		// interconnect attachment. Example: 2001:db8::1/125
		candidate_cloud_router_ipv6_address?: string

		// Single IPv4 address + prefix length to be configured on the
		// customer router interface for this
		// interconnect attachment. Example: 203.0.113.2/29
		candidate_customer_router_ip_address?: string

		// Single IPv6 address + prefix length to be configured on the
		// customer router interface for this
		// interconnect attachment. Example: 2001:db8::2/125
		candidate_customer_router_ipv6_address?: string

		// Up to 16 candidate prefixes that can be used to restrict the
		// allocation
		// of cloudRouterIpAddress and customerRouterIpAddress for this
		// attachment.
		// All prefixes must be within link-local address space
		// (169.254.0.0/16)
		// and must be /29 or shorter (/28, /27, etc). Google will attempt
		// to select
		// an unused /29 from the supplied candidate prefix(es). The
		// request will
		// fail if all possible /29s are in use on Google's edge. If not
		// supplied,
		// Google will randomly select an unused /29 from all of
		// link-local space.
		candidate_subnets?: [...string]

		// IPv4 address + prefix length to be configured on Cloud Router
		// Interface for this interconnect attachment.
		cloud_router_ip_address?: string

		// IPv6 address + prefix length to be configured on Cloud Router
		// Interface for this interconnect attachment.
		cloud_router_ipv6_address?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// IPv4 address + prefix length to be configured on the customer
		// router subinterface for this interconnect attachment.
		customer_router_ip_address?: string

		// IPv6 address + prefix length to be configured on the customer
		// router subinterface for this interconnect attachment.
		customer_router_ipv6_address?: string

		// An optional description of this resource.
		description?: string

		// Desired availability domain for the attachment. Only available
		// for type
		// PARTNER, at creation time. For improved reliability, customers
		// should
		// configure a pair of attachments with one per availability
		// domain. The
		// selected availability domain will be provided to the Partner
		// via the
		// pairing key so that the provisioned circuit will lie in the
		// specified
		// domain. If not specified, the value will default to
		// AVAILABILITY_DOMAIN_ANY.
		edge_availability_domain?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Indicates the user-supplied encryption option of this
		// interconnect
		// attachment. Can only be specified at attachment creation for
		// PARTNER or
		// DEDICATED attachments.
		// * NONE - This is the default value, which means that the VLAN
		// attachment
		// carries unencrypted traffic. VMs are able to send traffic to,
		// or receive
		// traffic from, such a VLAN attachment.
		// * IPSEC - The VLAN attachment carries only encrypted traffic
		// that is
		// encrypted by an IPsec device, such as an HA VPN gateway or
		// third-party
		// IPsec VPN. VMs cannot directly send traffic to, or receive
		// traffic from,
		// such a VLAN attachment. To use HA VPN over Cloud Interconnect,
		// the VLAN
		// attachment must be created with this option. Default value:
		// "NONE" Possible values: ["NONE", "IPSEC"]
		encryption?: string

		// Google reference ID, to be used when raising support tickets
		// with
		// Google or otherwise to debug backend connectivity issues.
		google_reference_id?: string
		id?:                  string

		// URL of the underlying Interconnect object that this
		// attachment's
		// traffic will traverse through. Required if type is DEDICATED,
		// must not
		// be set if type is PARTNER.
		interconnect?: string

		// URL of addresses that have been reserved for the interconnect
		// attachment,
		// Used only for interconnect attachment that has the encryption
		// option as
		// IPSEC.
		// The addresses must be RFC 1918 IP address ranges. When creating
		// HA VPN
		// gateway over the interconnect attachment, if the attachment is
		// configured
		// to use an RFC 1918 IP address, then the VPN gateway's IP
		// address will be
		// allocated from the IP address range specified here.
		// For example, if the HA VPN gateway's interface 0 is paired to
		// this
		// interconnect attachment, then an RFC 1918 IP address for the
		// VPN gateway
		// interface 0 will be allocated from the IP address specified for
		// this
		// interconnect attachment.
		// If this field is not specified for interconnect attachment that
		// has
		// encryption option as IPSEC, later on when creating HA VPN
		// gateway on this
		// interconnect attachment, the HA VPN gateway's IP address will
		// be
		// allocated from regional external IP address pool.
		ipsec_internal_addresses?: [...string]

		// A fingerprint for the labels being applied to this
		// Interconnect, which is essentially a hash
		// of the labels set used for optimistic locking. The fingerprint
		// is initially generated by
		// Compute Engine and changes after every request to modify or
		// update labels.
		// You must always provide an up-to-date fingerprint hash in order
		// to update or change labels,
		// otherwise the request will fail with error 412 conditionNotMet.
		label_fingerprint?: string
		l2_forwarding?: matchN(1, [#l2_forwarding, list.MaxItems(1) & [...#l2_forwarding]])
		timeouts?: #timeouts

		// Labels for this resource. These can only be added or modified
		// by the setLabels
		// method. Each label key/value pair must comply with RFC1035.
		// Label values may be empty.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Maximum Transmission Unit (MTU), in bytes, of packets passing
		// through this interconnect attachment.
		// Valid values are 1440, 1460, 1500, and 8896. If not specified,
		// the value will default to 1440.
		mtu?: string

		// Name of the resource. Provided by the client when the resource
		// is created. The
		// name must be 1-63 characters long, and comply with RFC1035.
		// Specifically, the
		// name must be 1-63 characters long and match the regular
		// expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character
		// must be a
		// lowercase letter, and all following characters must be a dash,
		// lowercase
		// letter, or digit, except the last character, which cannot be a
		// dash.
		name!: string

		// [Output only for type PARTNER. Not present for DEDICATED]. The
		// opaque
		// identifier of an PARTNER attachment used to initiate
		// provisioning with
		// a selected partner. Of the form "XXXXX/region/domain"
		pairing_key?: string

		// [Output only for type PARTNER. Not present for DEDICATED].
		// Optional
		// BGP ASN for the router that should be supplied by a layer 3
		// Partner if
		// they configured BGP on behalf of the customer.
		partner_asn?: string

		// Information specific to an InterconnectAttachment. This
		// property
		// is populated if the interconnect that this is attached to is of
		// type DEDICATED.
		private_interconnect_info?: [...close({
			tag8021q?: number
		})]
		project?: string

		// Region where the regional interconnect attachment resides.
		region?: string

		// URL of the cloud router to be used for dynamic routing. This
		// router must be in
		// the same region as this InterconnectAttachment. The
		// InterconnectAttachment will
		// automatically connect the Interconnect to the network & region
		// within which the
		// Cloud Router is configured.
		router?:    string
		self_link?: string

		// The stack type for this interconnect attachment to identify
		// whether the IPv6
		// feature is enabled or not. If not specified, IPV4_ONLY will be
		// used.
		// This field can be both set at interconnect attachments creation
		// and update
		// interconnect attachment operations. Possible values:
		// ["IPV4_IPV6", "IPV4_ONLY"]
		stack_type?: string

		// [Output Only] The current state of this attachment's
		// functionality.
		state?: string

		// Length of the IPv4 subnet mask. Allowed values: 29 (default),
		// 30. The default value is 29,
		// except for Cross-Cloud Interconnect connections that use an
		// InterconnectRemoteLocation with a
		// constraints.subnetLengthRange.min equal to 30. For example,
		// connections that use an Azure
		// remote location fall into this category. In these cases, the
		// default value is 30, and
		// requesting 29 returns an error. Where both 29 and 30 are
		// allowed, 29 is preferred, because it
		// gives Google Cloud Support more debugging visibility.
		subnet_length?: number

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of InterconnectAttachment you wish to create. Defaults
		// to
		// DEDICATED. Possible values: ["DEDICATED", "PARTNER",
		// "PARTNER_PROVIDER", "L2_DEDICATED"]
		type?: string

		// The IEEE 802.1Q VLAN tag for this attachment, in the range
		// 2-4094. When
		// using PARTNER type this will be managed upstream.
		vlan_tag8021q?: number
	})

	#l2_forwarding: close({
		// The default appliance IP address.
		default_appliance_ip_address?: string

		// URL of the network to which this attachment belongs.
		network?: string
		appliance_mappings?: matchN(1, [_#defs."/$defs/l2_forwarding/$defs/appliance_mappings", [..._#defs."/$defs/l2_forwarding/$defs/appliance_mappings"]])

		// The tunnel endpoint IP address.
		tunnel_endpoint_ip_address?: string
		geneve_header?: matchN(1, [_#defs."/$defs/l2_forwarding/$defs/geneve_header", list.MaxItems(1) & [..._#defs."/$defs/l2_forwarding/$defs/geneve_header"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/l2_forwarding/$defs/appliance_mappings": close({
		// The appliance IP address.
		appliance_ip_address?: string
		inner_vlan_to_appliance_mappings?: matchN(1, [_#defs."/$defs/l2_forwarding/$defs/appliance_mappings/$defs/inner_vlan_to_appliance_mappings", [..._#defs."/$defs/l2_forwarding/$defs/appliance_mappings/$defs/inner_vlan_to_appliance_mappings"]])

		// The name of this appliance mapping rule.
		name?: string

		// The VLAN tag.
		vlan_id?: string
	})

	_#defs: "/$defs/l2_forwarding/$defs/appliance_mappings/$defs/inner_vlan_to_appliance_mappings": close({
		// The inner appliance IP address.
		inner_appliance_ip_address?: string

		// List of inner VLAN tags.
		inner_vlan_tags?: [...string]
	})

	_#defs: "/$defs/l2_forwarding/$defs/geneve_header": close({
		// VNI is a 24-bit unique virtual network identifier.
		vni?: number
	})
}
