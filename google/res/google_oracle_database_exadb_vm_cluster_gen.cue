package res

import "list"

#google_oracle_database_exadb_vm_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_exadb_vm_cluster")
	close({
		// The name of the backup OdbSubnet associated with the
		// ExadbVmCluster.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		backup_odb_subnet!: string

		// The date and time that the ExadbVmCluster was created.
		create_time?: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// The display name for the ExadbVmCluster. The name does not have
		// to
		// be unique within your project. The name must be 1-255
		// characters long and
		// can only contain alphanumeric characters.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// ExadbVmCluster.
		entitlement_id?: string

		// The ID of the ExadbVmCluster to create. This value is
		// restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a
		// maximum of
		// 63 characters in length. The value must start with a letter and
		// end with a
		// letter or a number.
		exadb_vm_cluster_id!: string

		// The GCP Oracle zone where Oracle ExadbVmCluster is hosted.
		// Example: us-east4-b-r2.
		// During creation, the system will pick the zone assigned to the
		// ExascaleDbStorageVault.
		gcp_oracle_zone?: string

		// The labels or tags associated with the ExadbVmCluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		id?:       string
		properties!: matchN(1, [#properties, list.MaxItems(1) & [_, ...] & [...#properties]])
		timeouts?: #timeouts

		// Identifier. The name of the ExadbVmCluster resource in the
		// following format:
		// projects/{project}/locations/{region}/exadbVmClusters/{exadb_vm_cluster}
		name?: string

		// The name of the OdbNetwork associated with the ExadbVmCluster.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}
		// It is optional but if specified, this should match the parent
		// ODBNetwork of
		// the OdbSubnet.
		odb_network?: string

		// The name of the OdbSubnet associated with the ExadbVmCluster
		// for IP
		// allocation. Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		odb_subnet!: string
		project?:    string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		// The number of additional ECPUs per node for an Exadata VM
		// cluster on
		// exascale infrastructure.
		additional_ecpu_count_per_node?: number

		// The cluster name for Exascale vm cluster. The cluster name must
		// begin with
		// an alphabetic character and may contain hyphens(-) but can not
		// contain
		// underscores(_). It should be not more than 11 characters and is
		// not case
		// sensitive.
		// OCI Cluster name.
		cluster_name?: string

		// The number of ECPUs enabled per node for an exadata vm cluster
		// on
		// exascale infrastructure.
		enabled_ecpu_count_per_node!: number

		// The name of ExascaleDbStorageVault associated with the
		// ExadbVmCluster.
		// It can refer to an existing ExascaleDbStorageVault. Or a new
		// one can be
		// created during the ExadbVmCluster creation (requires
		// storage_vault_properties to be set).
		// Format:
		// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
		exascale_db_storage_vault!: string

		// The Oracle Grid Infrastructure (GI) software version.
		gi_version?: string

		// Grid Infrastructure Version.
		grid_image_id!: string

		// The hostname of the ExadbVmCluster.
		hostname?: string

		// Prefix for VM cluster host names.
		hostname_prefix!: string

		// The license type of the ExadbVmCluster.
		// Possible values:
		// LICENSE_INCLUDED
		// BRING_YOUR_OWN_LICENSE
		license_model?: string

		// State of the cluster.
		// Possible values:
		// PROVISIONING
		// AVAILABLE
		// UPDATING
		// TERMINATING
		// TERMINATED
		// FAILED
		// MAINTENANCE_IN_PROGRESS
		lifecycle_state?: string

		// Memory per VM (GB) (Read-only): Shows the amount of memory
		// allocated to
		// each VM. Memory is calculated based on 2.75 GB per Total ECPUs.
		memory_size_gb?: number
		data_collection_options?: matchN(1, [_#defs."/$defs/properties/$defs/data_collection_options", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/data_collection_options"]])
		time_zone?: matchN(1, [_#defs."/$defs/properties/$defs/time_zone", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/time_zone"]])
		vm_file_system_storage!: matchN(1, [_#defs."/$defs/properties/$defs/vm_file_system_storage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/properties/$defs/vm_file_system_storage"]])

		// The number of nodes/VMs in the ExadbVmCluster.
		node_count!: number

		// Deep link to the OCI console to view this resource.
		oci_uri?: string

		// SCAN listener port - TCP
		scan_listener_port_tcp?: number

		// The shape attribute of the VM cluster. The type of Exascale
		// storage used
		// for Exadata VM cluster. The default is SMART_STORAGE which
		// supports Oracle
		// Database 23ai and later
		// Possible values:
		// SMART_STORAGE
		// BLOCK_STORAGE
		shape_attribute!: string

		// The SSH public keys for the ExadbVmCluster.
		ssh_public_keys!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/data_collection_options": close({
		// Indicates whether to enable data collection for diagnostics.
		is_diagnostics_events_enabled?: bool

		// Indicates whether to enable health monitoring.
		is_health_monitoring_enabled?: bool

		// Indicates whether to enable incident logs and trace collection.
		is_incident_logs_enabled?: bool
	})

	_#defs: "/$defs/properties/$defs/time_zone": close({
		// IANA Time Zone Database time zone. For example
		// "America/New_York".
		id?: string

		// IANA Time Zone Database version number. For example "2019a".
		version?: string
	})

	_#defs: "/$defs/properties/$defs/vm_file_system_storage": close({
		// The storage allocation for the exadbvmcluster per node, in
		// gigabytes (GB).
		// This field is used to calculate the total storage allocation
		// for the
		// exadbvmcluster.
		size_in_gbs_per_node!: number
	})
}
