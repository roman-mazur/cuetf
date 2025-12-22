package data

#aws_odb_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_network")
	close({
		arn?: string

		// The availability zone where the ODB network is located.
		availability_zone?: string

		// The AZ ID of the AZ where the ODB network is located.
		availability_zone_id?: string

		// The CIDR range of the backup subnet for the ODB network.
		backup_subnet_cidr?: string

		// The CIDR notation for the network resource.
		client_subnet_cidr?: string

		// The date and time when the ODB network was created.
		created_at?: string

		// The name of the custom domain that the network is located.
		custom_domain_name?: string

		// The default DNS prefix for the network resource.
		default_dns_prefix?: string

		// Display name for the network resource.
		display_name?: string
		id!:           string

		// The managed services configuration for the ODB network.
		managed_services?: [...close({
			managed_s3_backup_access?: [...close({
				ipv4_addresses?: [...string]
				status?: string
			})]
			managed_service_ipv4_cidrs?: [...string]
			resource_gateway_arn?: string
			s3_access?: [...close({
				domain_name?: string
				ipv4_addresses?: [...string]
				s3_policy_document?: string
				status?:             string
			})]
			service_network_arn?: string
			service_network_endpoint?: [...close({
				vpc_endpoint_id?:   string
				vpc_endpoint_type?: string
			})]
			zero_tl_access?: [...close({
				cidr?:   string
				status?: string
			})]
		})]

		// The DNS resolver endpoint in OCI for forwarding DNS queries for
		// the ociPrivateZone domain.
		oci_dns_forwarding_configs?: [...close({
			domain_name?:         string
			oci_dns_listener_ip?: string
		})]

		// The unique identifier of the OCI network anchor for the ODB
		// network.
		oci_network_anchor_id?: string

		// The URL of the OCI network anchor for the ODB network.
		oci_network_anchor_url?: string

		// The name of the OCI resource anchor for the ODB network.
		oci_resource_anchor_name?: string

		// The unique identifier Oracle Cloud ID (OCID) of the OCI VCN for
		// the ODB network.
		oci_vcn_id?: string

		// The URL of the OCI VCN for the ODB network.
		oci_vcn_url?: string

		// The list of CIDR ranges from the peered VPC that are allowed
		// access to the ODB network. Please refer odb network peering
		// documentation.
		peered_cidrs?: [...string]

		// The amount of progress made on the current operation on the ODB
		// network, expressed as a percentage.
		percent_progress?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The status of the network resource.
		status?: string

		// Additional information about the current status of the ODB
		// network.
		status_reason?: string
		tags?: [string]: string
	})
}
