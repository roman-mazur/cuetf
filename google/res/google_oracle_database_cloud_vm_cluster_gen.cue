package res

import "list"

#google_oracle_database_cloud_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_oracle_database_cloud_vm_cluster")
	close({
		// The name of the backup OdbSubnet associated with the VM
		// Cluster.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		backup_odb_subnet?: string

		// CIDR range of the backup subnet.
		backup_subnet_cidr?: string

		// Network settings. CIDR to use for cluster IP allocation.
		cidr?: string

		// The ID of the VM Cluster to create. This value is restricted
		// to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a maximum of
		// 63
		// characters in length. The value must start with a letter and
		// end with
		// a letter or a number.
		cloud_vm_cluster_id!: string

		// The date and time that the VM cluster was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// cluster. Deleting this cluster via terraform destroy or
		// terraform apply will only succeed if this field is false in
		// the Terraform state.
		deletion_protection?: bool

		// User friendly name for this resource.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the Exadata Infrastructure resource on which VM
		// cluster
		// resource is created, in the following format:
		// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
		exadata_infrastructure!: string

		// GCP location where Oracle Exadata is hosted. It is same as GCP
		// Oracle zone
		// of Exadata infrastructure.
		gcp_oracle_zone?: string
		id?:              string

		// Labels or tags associated with the VM Cluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
		timeouts?: #timeouts

		// Resource ID segment making up resource 'name'. See
		// documentation for resource type
		// 'oracledatabase.googleapis.com/DbNode'.
		location!: string

		// Identifier. The name of the VM Cluster resource with the
		// format:
		// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
		name?: string

		// The name of the VPC network.
		// Format: projects/{project}/global/networks/{network}
		network?: string

		// The name of the OdbNetwork associated with the VM Cluster.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}
		// It is optional but if specified, this should match the parent
		// ODBNetwork of
		// the odb_subnet and backup_odb_subnet.
		odb_network?: string

		// The name of the OdbSubnet associated with the VM Cluster for
		// IP allocation. Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		odb_subnet?: string
		project?:    string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		// OCI Cluster name.
		cluster_name?: string

		// Compartment ID of cluster.
		compartment_id?: string

		// Number of enabled CPU cores.
		cpu_core_count!: number

		// The data disk group size to be allocated in TBs.
		data_storage_size_tb?: number

		// Local storage per VM
		db_node_storage_size_gb?: number

		// OCID of database servers.
		db_server_ocids?: [...string]

		// The type of redundancy.
		// Possible values:
		// DISK_REDUNDANCY_UNSPECIFIED
		// HIGH
		// NORMAL
		disk_redundancy?: string

		// DNS listener IP.
		dns_listener_ip?: string

		// Parent DNS domain where SCAN DNS and hosts names are qualified.
		// ex: ocispdelegated.ocisp10jvnet.oraclevcn.com
		domain?: string

		// Grid Infrastructure Version.
		gi_version?: string

		// host name without domain.
		// format: "-" with some suffix.
		// ex: sp2-yi0xq where "sp2" is the hostname_prefix.
		hostname?: string

		// Prefix for VM cluster host names.
		hostname_prefix?: string

		// License type of VM Cluster.
		// Possible values:
		// LICENSE_TYPE_UNSPECIFIED
		// LICENSE_INCLUDED
		// BRING_YOUR_OWN_LICENSE
		license_type!: string

		// Use local backup.
		local_backup_enabled?: bool

		// Memory allocated in GBs.
		memory_size_gb?: number

		// Number of database servers.
		node_count?: number

		// Deep link to the OCI console to view this resource.
		oci_url?: string
		diagnostics_data_collection_options?: matchN(1, [_#defs."/$defs/properties/$defs/diagnostics_data_collection_options", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/diagnostics_data_collection_options"]])
		time_zone?: matchN(1, [_#defs."/$defs/properties/$defs/time_zone", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/time_zone"]])

		// Oracle Cloud Infrastructure ID of VM Cluster.
		ocid?: string

		// OCPU count per VM. Minimum is 0.1.
		ocpu_count?: number

		// SCAN DNS name.
		// ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.oraclevcn.com
		scan_dns?: string

		// OCID of scan DNS record.
		scan_dns_record_id?: string

		// OCIDs of scan IPs.
		scan_ip_ids?: [...string]

		// SCAN listener port - TCP
		scan_listener_port_tcp?: number

		// SCAN listener port - TLS
		scan_listener_port_tcp_ssl?: number

		// Shape of VM Cluster.
		shape?: string

		// Use exadata sparse snapshots.
		sparse_diskgroup_enabled?: bool

		// SSH public keys to be stored with cluster.
		ssh_public_keys?: [...string]

		// State of the cluster.
		// Possible values:
		// STATE_UNSPECIFIED
		// PROVISIONING
		// AVAILABLE
		// UPDATING
		// TERMINATING
		// TERMINATED
		// FAILED
		// MAINTENANCE_IN_PROGRESS
		state?: string

		// The storage allocation for the disk group, in gigabytes (GB).
		storage_size_gb?: number

		// Operating system version of the image.
		system_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/diagnostics_data_collection_options": close({
		// Indicates whether diagnostic collection is enabled for the VM
		// cluster
		diagnostics_events_enabled?: bool

		// Indicates whether health monitoring is enabled for the VM
		// cluster
		health_monitoring_enabled?: bool

		// Indicates whether incident logs and trace collection are
		// enabled for the VM
		// cluster
		incident_logs_enabled?: bool
	})

	_#defs: "/$defs/properties/$defs/time_zone": close({
		// IANA Time Zone Database time zone, e.g. "America/New_York".
		id?: string
	})
}
