package res

#aws_odb_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_odb_network")
	close({
		// The name of the Availability Zone (AZ) where the odb network is
		// located. Changing this will force terraform to create new
		// resource
		availability_zone?: string

		// The AZ ID of the AZ where the ODB network is located. Changing
		// this will force terraform to create new resource.
		availability_zone_id!: string

		// The CIDR range of the backup subnet for the ODB network.
		// Changing this will force terraform to create new resource.
		// Constraints:
		// - Must not overlap with the CIDR range of the client subnet.
		// - Must not overlap with the CIDR ranges of the VPCs that are
		// connected to the
		// ODB network.
		// - Must not use the following CIDR ranges that are reserved by
		// OCI:
		// - 100.106.0.0/16 and 100.107.0.0/16
		// - 169.254.0.0/16
		// - 224.0.0.0 - 239.255.255.255
		// - 240.0.0.0 - 255.255.255.255
		backup_subnet_cidr!: string
		arn?:                string

		// The CIDR notation for the network resource. Changing this will
		// force terraform to create new resource.
		// Constraints:
		// - Must not overlap with the CIDR range of the backup subnet.
		// - Must not overlap with the CIDR ranges of the VPCs that are
		// connected to the
		// ODB network.
		// - Must not use the following CIDR ranges that are reserved by
		// OCI:
		// - 100.106.0.0/16 and 100.107.0.0/16
		// - 169.254.0.0/16
		// - 224.0.0.0 - 239.255.255.255
		// - 240.0.0.0 - 255.255.255.255
		client_subnet_cidr!: string

		// The date and time when the ODB network was created.
		created_at?: string

		// The name of the custom domain that the network is located.
		// custom_domain_name and default_dns_prefix both can't be given.
		custom_domain_name?: string

		// The default DNS prefix for the network resource. Changing this
		// will force terraform to create new resource.
		default_dns_prefix?: string

		// The user-friendly name for the odb network. Changing this will
		// force terraform to create a new resource.
		display_name!: string

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
			zero_etl_access?: [...close({
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
		id?: string

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
		timeouts?:   #timeouts

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

		// Specifies the configuration for Amazon S3 access from the ODB
		// network.
		s3_access!: string

		// Specifies the endpoint policy for Amazon S3 access from the ODB
		// network.
		s3_policy_document?: string

		// The status of the network resource.
		status?: string

		// Additional information about the current status of the ODB
		// network.
		status_reason?: string
		tags?: [string]:     string
		tags_all?: [string]: string

		// Specifies the configuration for Zero-ETL access from the ODB
		// network.
		zero_etl_access!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
