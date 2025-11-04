package res

import "list"

#google_dataproc_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_cluster")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The timeout duration which allows graceful decomissioning when
		// you change the number of worker nodes directly through a
		// terraform apply
		graceful_decommission_timeout?: string

		// The list of the labels (key/value pairs) configured on the
		// resource and to be applied to instances in the cluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The name of the cluster, unique within the project and zone.
		name!: string

		// The ID of the project in which the cluster will exist. If it is
		// not provided, the provider project is used.
		project?: string

		// The region in which the cluster and associated nodes will be
		// created in. Defaults to global.
		region?: string
		cluster_config?: matchN(1, [#cluster_config, list.MaxItems(1) & [...#cluster_config]])
		timeouts?: #timeouts
		virtual_cluster_config?: matchN(1, [#virtual_cluster_config, list.MaxItems(1) & [...#virtual_cluster_config]])

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#cluster_config: close({
		autoscaling_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/autoscaling_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/autoscaling_config"]])
		auxiliary_node_groups?: matchN(1, [_#defs."/$defs/cluster_config/$defs/auxiliary_node_groups", [..._#defs."/$defs/cluster_config/$defs/auxiliary_node_groups"]])

		// The name of the cloud storage bucket ultimately used to house
		// the staging data for the cluster. If staging_bucket is
		// specified, it will contain this value, otherwise it will be
		// the auto generated name.
		bucket?: string

		// Specifies the tier of the cluster created.
		cluster_tier?: string

		// The Cloud Storage staging bucket used to stage files, such as
		// Hadoop jars, between client machines and the cluster. Note: If
		// you don't explicitly specify a staging_bucket then GCP will
		// auto create / assign one for you. However, you are not
		// guaranteed an auto generated bucket which is solely dedicated
		// to your cluster; it may be shared with other clusters in the
		// same region/zone also choosing to use the auto generation
		// option.
		staging_bucket?: string
		dataproc_metric_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/dataproc_metric_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/dataproc_metric_config"]])
		encryption_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/encryption_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/encryption_config"]])
		endpoint_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/endpoint_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/endpoint_config"]])
		gce_cluster_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/gce_cluster_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/gce_cluster_config"]])
		initialization_action?: matchN(1, [_#defs."/$defs/cluster_config/$defs/initialization_action", [..._#defs."/$defs/cluster_config/$defs/initialization_action"]])
		lifecycle_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/lifecycle_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/lifecycle_config"]])
		master_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/master_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/master_config"]])
		metastore_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/metastore_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/metastore_config"]])

		// The Cloud Storage temp bucket used to store ephemeral cluster
		// and jobs data, such as Spark and MapReduce history files.
		// Note: If you don't explicitly specify a temp_bucket then GCP
		// will auto create / assign one for you.
		temp_bucket?: string
		preemptible_worker_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/preemptible_worker_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/preemptible_worker_config"]])
		security_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/security_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/security_config"]])
		software_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/software_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/software_config"]])
		worker_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/worker_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/worker_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#virtual_cluster_config: close({
		auxiliary_services_config?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/auxiliary_services_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_cluster_config/$defs/auxiliary_services_config"]])
		kubernetes_cluster_config?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config"]])

		// A Cloud Storage bucket used to stage job dependencies, config
		// files, and job driver console output. If you do not specify a
		// staging bucket, Cloud Dataproc will determine a Cloud Storage
		// location (US, ASIA, or EU) for your cluster's staging bucket
		// according to the Compute Engine zone where your cluster is
		// deployed, and then create and manage this project-level,
		// per-location bucket.
		staging_bucket?: string
	})

	_#defs: "/$defs/cluster_config/$defs/autoscaling_config": close({
		// The autoscaling policy used by the cluster.
		policy_uri!: string
	})

	_#defs: "/$defs/cluster_config/$defs/auxiliary_node_groups": close({
		node_group!: matchN(1, [_#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group", [_, ...] & [..._#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group"]])

		// A node group ID. Generated if not specified. The ID must
		// contain only letters (a-z, A-Z), numbers (0-9), underscores
		// (_), and hyphens (-). Cannot begin or end with underscore or
		// hyphen. Must consist of from 3 to 33 characters.
		node_group_id?: string
	})

	_#defs: "/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group": close({
		node_group_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config"]])

		// The Node group resource name.
		name?: string

		// Node group roles.
		roles!: [...string]
	})

	_#defs: "/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config": close({
		// List of auxiliary node group instance names which have been
		// assigned to the cluster.
		instance_names?: [...string]

		// The name of a Google Compute Engine machine type to create for
		// the master
		machine_type?: string

		// The name of a minimum generation of CPU family for the
		// auxiliary node group. If not specified, GCP will default to a
		// predetermined computed value for each zone.
		min_cpu_platform?: string

		// Specifies the number of auxiliary nodes to create. If not
		// specified, GCP will default to a predetermined computed value.
		num_instances?: number
		accelerators?: matchN(1, [_#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config/$defs/accelerators", [..._#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config/$defs/accelerators"]])
		disk_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config/$defs/disk_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config/$defs/disk_config"]])
	})

	_#defs: "/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config/$defs/accelerators": close({
		// The number of the accelerator cards of this type exposed to
		// this instance. Often restricted to one of 1, 2, 4, or 8.
		accelerator_count!: number

		// The short name of the accelerator type to expose to this
		// instance. For example, nvidia-tesla-k80.
		accelerator_type!: string
	})

	_#defs: "/$defs/cluster_config/$defs/auxiliary_node_groups/$defs/node_group/$defs/node_group_config/$defs/disk_config": close({
		// Size of the primary disk attached to each node, specified in
		// GB. The primary disk contains the boot volume and system
		// libraries, and the smallest allowed disk size is 10GB. GCP
		// will default to a predetermined computed value if not set
		// (currently 500GB). Note: If SSDs are not attached, it also
		// contains the HDFS data blocks and Hadoop working directories.
		boot_disk_size_gb?: number

		// The disk type of the primary disk attached to each node. Such
		// as "pd-ssd" or "pd-standard". Defaults to "pd-standard".
		boot_disk_type?: string

		// Interface type of local SSDs (default is "scsi"). Valid values:
		// "scsi" (Small Computer System Interface), "nvme" (Non-Volatile
		// Memory Express).
		local_ssd_interface?: string

		// The amount of local SSD disks that will be attached to each
		// master cluster node. Defaults to 0.
		num_local_ssds?: number
	})

	_#defs: "/$defs/cluster_config/$defs/dataproc_metric_config": close({
		metrics!: matchN(1, [_#defs."/$defs/cluster_config/$defs/dataproc_metric_config/$defs/metrics", [_, ...] & [..._#defs."/$defs/cluster_config/$defs/dataproc_metric_config/$defs/metrics"]])
	})

	_#defs: "/$defs/cluster_config/$defs/dataproc_metric_config/$defs/metrics": close({
		// Specify one or more [available OSS metrics]
		// (https://cloud.google.com/dataproc/docs/guides/monitoring#available_oss_metrics)
		// to collect.
		metric_overrides?: [...string]

		// A source for the collection of Dataproc OSS metrics (see
		// [available OSS metrics]
		// (https://cloud.google.com//dataproc/docs/guides/monitoring#available_oss_metrics)).
		metric_source!: string
	})

	_#defs: "/$defs/cluster_config/$defs/encryption_config": close({
		// The Cloud KMS key name to use for PD disk encryption for all
		// instances in the cluster.
		kms_key_name!: string
	})

	_#defs: "/$defs/cluster_config/$defs/endpoint_config": close({
		// The flag to enable http access to specific ports on the cluster
		// from external sources (aka Component Gateway). Defaults to
		// false.
		enable_http_port_access!: bool

		// The map of port descriptions to URLs. Will only be populated if
		// enable_http_port_access is true.
		http_ports?: [string]: string
	})

	_#defs: "/$defs/cluster_config/$defs/gce_cluster_config": close({
		// By default, clusters are not restricted to internal IP
		// addresses, and will have ephemeral external IP addresses
		// assigned to each instance. If set to true, all instances in
		// the cluster will only have internal IP addresses. Note:
		// Private Google Access (also known as privateIpGoogleAccess)
		// must be enabled on the subnetwork that the cluster will be
		// launched in.
		internal_ip_only?: bool

		// A map of the Compute Engine metadata entries to add to all
		// instances
		metadata?: [string]: string

		// The name or self_link of the Google Compute Engine network to
		// the cluster will be part of. Conflicts with subnetwork. If
		// neither is specified, this defaults to the "default" network.
		network?: string

		// The service account to be used by the Node VMs. If not
		// specified, the "default" service account is used.
		service_account?: string

		// The set of Google API scopes to be made available on all of the
		// node VMs under the service_account specified. These can be
		// either FQDNs, or scope aliases.
		service_account_scopes?: [...string]
		confidential_instance_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/confidential_instance_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/confidential_instance_config"]])
		node_group_affinity?: matchN(1, [_#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/node_group_affinity", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/node_group_affinity"]])
		reservation_affinity?: matchN(1, [_#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/reservation_affinity", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/reservation_affinity"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/gce_cluster_config/$defs/shielded_instance_config"]])

		// The name or self_link of the Google Compute Engine subnetwork
		// the cluster will be part of. Conflicts with network.
		subnetwork?: string

		// The list of instance tags applied to instances in the cluster.
		// Tags are used to identify valid sources or targets for network
		// firewalls.
		tags?: [...string]

		// The GCP zone where your data is stored and used (i.e. where the
		// master and the worker nodes will be created in). If region is
		// set to 'global' (default) then zone is mandatory, otherwise
		// GCP is able to make use of Auto Zone Placement to determine
		// this automatically for you. Note: This setting additionally
		// determines and restricts which computing resources are
		// available for use with other configs such as
		// cluster_config.master_config.machine_type and
		// cluster_config.worker_config.machine_type.
		zone?: string
	})

	_#defs: "/$defs/cluster_config/$defs/gce_cluster_config/$defs/confidential_instance_config": close({
		// Defines whether the instance should have confidential compute
		// enabled.
		enable_confidential_compute?: bool
	})

	_#defs: "/$defs/cluster_config/$defs/gce_cluster_config/$defs/node_group_affinity": close({
		// The URI of a sole-tenant that the cluster will be created on.
		node_group_uri!: string
	})

	_#defs: "/$defs/cluster_config/$defs/gce_cluster_config/$defs/reservation_affinity": close({
		// Type of reservation to consume.
		consume_reservation_type?: string

		// Corresponds to the label key of reservation resource.
		key?: string

		// Corresponds to the label values of reservation resource.
		values?: [...string]
	})

	_#defs: "/$defs/cluster_config/$defs/gce_cluster_config/$defs/shielded_instance_config": close({
		// Defines whether instances have integrity monitoring enabled.
		enable_integrity_monitoring?: bool

		// Defines whether instances have Secure Boot enabled.
		enable_secure_boot?: bool

		// Defines whether instances have the vTPM enabled.
		enable_vtpm?: bool
	})

	_#defs: "/$defs/cluster_config/$defs/initialization_action": close({
		// The script to be executed during initialization of the cluster.
		// The script must be a GCS file with a gs:// prefix.
		script!: string

		// The maximum duration (in seconds) which script is allowed to
		// take to execute its action. GCP will default to a
		// predetermined computed value if not set (currently 300).
		timeout_sec?: number
	})

	_#defs: "/$defs/cluster_config/$defs/lifecycle_config": close({
		// The time when cluster will be auto-deleted. A timestamp in
		// RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example:
		// "2014-10-02T15:01:23.045123456Z".
		auto_delete_time?: string

		// The duration to keep the cluster alive while idling (no jobs
		// running). After this TTL, the cluster will be deleted. Valid
		// range: [10m, 14d].
		idle_delete_ttl?: string

		// Time when the cluster became idle (most recent job finished)
		// and became eligible for deletion due to idleness.
		idle_start_time?: string
	})

	_#defs: "/$defs/cluster_config/$defs/master_config": close({
		// The URI for the image to use for this master
		image_uri?: string

		// List of master instance names which have been assigned to the
		// cluster.
		instance_names?: [...string]

		// The name of a Google Compute Engine machine type to create for
		// the master
		machine_type?: string

		// The name of a minimum generation of CPU family for the master.
		// If not specified, GCP will default to a predetermined computed
		// value for each zone.
		min_cpu_platform?: string
		accelerators?: matchN(1, [_#defs."/$defs/cluster_config/$defs/master_config/$defs/accelerators", [..._#defs."/$defs/cluster_config/$defs/master_config/$defs/accelerators"]])
		disk_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/master_config/$defs/disk_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/master_config/$defs/disk_config"]])

		// Specifies the number of master nodes to create. If not
		// specified, GCP will default to a predetermined computed value.
		num_instances?: number
	})

	_#defs: "/$defs/cluster_config/$defs/master_config/$defs/accelerators": close({
		// The number of the accelerator cards of this type exposed to
		// this instance. Often restricted to one of 1, 2, 4, or 8.
		accelerator_count!: number

		// The short name of the accelerator type to expose to this
		// instance. For example, nvidia-tesla-k80.
		accelerator_type!: string
	})

	_#defs: "/$defs/cluster_config/$defs/master_config/$defs/disk_config": close({
		// Size of the primary disk attached to each node, specified in
		// GB. The primary disk contains the boot volume and system
		// libraries, and the smallest allowed disk size is 10GB. GCP
		// will default to a predetermined computed value if not set
		// (currently 500GB). Note: If SSDs are not attached, it also
		// contains the HDFS data blocks and Hadoop working directories.
		boot_disk_size_gb?: number

		// The disk type of the primary disk attached to each node. Such
		// as "pd-ssd" or "pd-standard". Defaults to "pd-standard".
		boot_disk_type?: string

		// Interface type of local SSDs (default is "scsi"). Valid values:
		// "scsi" (Small Computer System Interface), "nvme" (Non-Volatile
		// Memory Express).
		local_ssd_interface?: string

		// The amount of local SSD disks that will be attached to each
		// master cluster node. Defaults to 0.
		num_local_ssds?: number
	})

	_#defs: "/$defs/cluster_config/$defs/metastore_config": close({
		// Resource name of an existing Dataproc Metastore service.
		dataproc_metastore_service!: string
	})

	_#defs: "/$defs/cluster_config/$defs/preemptible_worker_config": close({
		// List of preemptible instance names which have been assigned to
		// the cluster.
		instance_names?: [...string]

		// Specifies the number of preemptible nodes to create. Defaults
		// to 0.
		num_instances?: number
		disk_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/disk_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/disk_config"]])

		// Specifies the preemptibility of the secondary nodes. Defaults
		// to PREEMPTIBLE.
		preemptibility?: string
		instance_flexibility_policy?: matchN(1, [_#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy"]])
	})

	_#defs: "/$defs/cluster_config/$defs/preemptible_worker_config/$defs/disk_config": close({
		// Size of the primary disk attached to each preemptible worker
		// node, specified in GB. The smallest allowed disk size is 10GB.
		// GCP will default to a predetermined computed value if not set
		// (currently 500GB). Note: If SSDs are not attached, it also
		// contains the HDFS data blocks and Hadoop working directories.
		boot_disk_size_gb?: number

		// The disk type of the primary disk attached to each preemptible
		// worker node. Such as "pd-ssd" or "pd-standard". Defaults to
		// "pd-standard".
		boot_disk_type?: string

		// Interface type of local SSDs (default is "scsi"). Valid values:
		// "scsi" (Small Computer System Interface), "nvme" (Non-Volatile
		// Memory Express).
		local_ssd_interface?: string

		// The amount of local SSD disks that will be attached to each
		// preemptible worker node. Defaults to 0.
		num_local_ssds?: number
	})

	_#defs: "/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy": close({
		instance_selection_list?: matchN(1, [_#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy/$defs/instance_selection_list", [..._#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy/$defs/instance_selection_list"]])
		provisioning_model_mix?: matchN(1, [_#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy/$defs/provisioning_model_mix", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy/$defs/provisioning_model_mix"]])

		// A list of instance selection results in the group.
		instance_selection_results?: [...close({
			machine_type?: string
			vm_count?:     number
		})]
	})

	_#defs: "/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy/$defs/instance_selection_list": close({
		// Full machine-type names, e.g. "n1-standard-16".
		machine_types?: [...string]

		// Preference of this instance selection. Lower number means
		// higher preference. Dataproc will first try to create a VM
		// based on the machine-type with priority rank and fallback to
		// next rank based on availability. Machine types and instance
		// selections with the same priority have the same preference.
		rank?: number
	})

	_#defs: "/$defs/cluster_config/$defs/preemptible_worker_config/$defs/instance_flexibility_policy/$defs/provisioning_model_mix": close({
		// The base capacity that will always use Standard VMs to avoid
		// risk of more preemption than the minimum capacity you need.
		standard_capacity_base?: number

		// The percentage of target capacity that should use Standard VM.
		// The remaining percentage will use Spot VMs.
		standard_capacity_percent_above_base?: number
	})

	_#defs: "/$defs/cluster_config/$defs/security_config": close({
		identity_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/security_config/$defs/identity_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/security_config/$defs/identity_config"]])
		kerberos_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/security_config/$defs/kerberos_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/security_config/$defs/kerberos_config"]])
	})

	_#defs: "/$defs/cluster_config/$defs/security_config/$defs/identity_config": close({
		// User to service account mappings for multi-tenancy.
		user_service_account_mapping!: [string]: string
	})

	_#defs: "/$defs/cluster_config/$defs/security_config/$defs/kerberos_config": close({
		// The admin server (IP or hostname) for the remote trusted realm
		// in a cross realm trust relationship.
		cross_realm_trust_admin_server?: string

		// The KDC (IP or hostname) for the remote trusted realm in a
		// cross realm trust relationship.
		cross_realm_trust_kdc?: string

		// The remote realm the Dataproc on-cluster KDC will trust, should
		// the user enable cross realm trust.
		cross_realm_trust_realm?: string

		// The Cloud Storage URI of a KMS encrypted file containing the
		// shared password between the on-cluster
		// Kerberos realm and the remote trusted realm, in a cross realm
		// trust relationship.
		cross_realm_trust_shared_password_uri?: string

		// Flag to indicate whether to Kerberize the cluster.
		enable_kerberos?: bool

		// The Cloud Storage URI of a KMS encrypted file containing the
		// master key of the KDC database.
		kdc_db_key_uri?: string

		// The Cloud Storage URI of a KMS encrypted file containing the
		// password to the user provided key. For the self-signed
		// certificate, this password is generated by Dataproc.
		key_password_uri?: string

		// The Cloud Storage URI of a KMS encrypted file containing
		// the password to the user provided keystore. For the self-signed
		// certificate, this password is generated
		// by Dataproc
		keystore_password_uri?: string

		// The Cloud Storage URI of the keystore file used for SSL
		// encryption. If not provided, Dataproc will provide a
		// self-signed certificate.
		keystore_uri?: string

		// The uri of the KMS key used to encrypt various sensitive files.
		kms_key_uri!: string

		// The name of the on-cluster Kerberos realm. If not specified,
		// the uppercased domain of hostnames will be the realm.
		realm?: string

		// The cloud Storage URI of a KMS encrypted file containing the
		// root principal password.
		root_principal_password_uri!: string

		// The lifetime of the ticket granting ticket, in hours.
		tgt_lifetime_hours?: number

		// The Cloud Storage URI of a KMS encrypted file containing the
		// password to the user provided truststore. For the self-signed
		// certificate, this password is generated by Dataproc.
		truststore_password_uri?: string

		// The Cloud Storage URI of the truststore file used for SSL
		// encryption. If not provided, Dataproc will provide a
		// self-signed certificate.
		truststore_uri?: string
	})

	_#defs: "/$defs/cluster_config/$defs/software_config": close({
		// The Cloud Dataproc image version to use for the cluster - this
		// controls the sets of software versions installed onto the
		// nodes when you create clusters. If not specified, defaults to
		// the latest version.
		image_version?: string

		// The set of optional components to activate on the cluster.
		optional_components?: [...string]

		// A list of override and additional properties (key/value pairs)
		// used to modify various aspects of the common configuration
		// files used when creating a cluster.
		override_properties?: [string]: string

		// A list of the properties used to set the daemon config files.
		// This will include any values supplied by the user via
		// cluster_config.software_config.override_properties
		properties?: [string]: string
	})

	_#defs: "/$defs/cluster_config/$defs/worker_config": close({
		// The URI for the image to use for this master/worker
		image_uri?: string

		// List of master/worker instance names which have been assigned
		// to the cluster.
		instance_names?: [...string]

		// The name of a Google Compute Engine machine type to create for
		// the master/worker
		machine_type?: string
		accelerators?: matchN(1, [_#defs."/$defs/cluster_config/$defs/worker_config/$defs/accelerators", [..._#defs."/$defs/cluster_config/$defs/worker_config/$defs/accelerators"]])

		// The name of a minimum generation of CPU family for the
		// master/worker. If not specified, GCP will default to a
		// predetermined computed value for each zone.
		min_cpu_platform?: string
		disk_config?: matchN(1, [_#defs."/$defs/cluster_config/$defs/worker_config/$defs/disk_config", list.MaxItems(1) & [..._#defs."/$defs/cluster_config/$defs/worker_config/$defs/disk_config"]])

		// The minimum number of primary worker instances to create.
		min_num_instances?: number

		// Specifies the number of worker nodes to create. If not
		// specified, GCP will default to a predetermined computed value.
		num_instances?: number
	})

	_#defs: "/$defs/cluster_config/$defs/worker_config/$defs/accelerators": close({
		// The number of the accelerator cards of this type exposed to
		// this instance. Often restricted to one of 1, 2, 4, or 8.
		accelerator_count!: number

		// The short name of the accelerator type to expose to this
		// instance. For example, nvidia-tesla-k80.
		accelerator_type!: string
	})

	_#defs: "/$defs/cluster_config/$defs/worker_config/$defs/disk_config": close({
		// Size of the primary disk attached to each node, specified in
		// GB. The primary disk contains the boot volume and system
		// libraries, and the smallest allowed disk size is 10GB. GCP
		// will default to a predetermined computed value if not set
		// (currently 500GB). Note: If SSDs are not attached, it also
		// contains the HDFS data blocks and Hadoop working directories.
		boot_disk_size_gb?: number

		// The disk type of the primary disk attached to each node. Such
		// as "pd-ssd" or "pd-standard". Defaults to "pd-standard".
		boot_disk_type?: string

		// Interface type of local SSDs (default is "scsi"). Valid values:
		// "scsi" (Small Computer System Interface), "nvme" (Non-Volatile
		// Memory Express).
		local_ssd_interface?: string

		// The amount of local SSD disks that will be attached to each
		// master cluster node. Defaults to 0.
		num_local_ssds?: number
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/auxiliary_services_config": close({
		metastore_config?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/auxiliary_services_config/$defs/metastore_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_cluster_config/$defs/auxiliary_services_config/$defs/metastore_config"]])
		spark_history_server_config?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/auxiliary_services_config/$defs/spark_history_server_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_cluster_config/$defs/auxiliary_services_config/$defs/spark_history_server_config"]])
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/auxiliary_services_config/$defs/metastore_config": close({
		// The Hive Metastore configuration for this workload.
		dataproc_metastore_service?: string
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/auxiliary_services_config/$defs/spark_history_server_config": close({
		// Resource name of an existing Dataproc Cluster to act as a Spark
		// History Server for the workload.
		dataproc_cluster?: string
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config": close({
		gke_cluster_config!: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config"]])
		kubernetes_software_config!: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/kubernetes_software_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/kubernetes_software_config"]])

		// A namespace within the Kubernetes cluster to deploy into. If
		// this namespace does not exist, it is created. If it exists,
		// Dataproc verifies that another Dataproc VirtualCluster is not
		// installed into it. If not specified, the name of the Dataproc
		// Cluster is used.
		kubernetes_namespace?: string
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config": close({
		node_pool_target?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target", [..._#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target"]])

		// A target GKE cluster to deploy to. It must be in the same
		// project and region as the Dataproc cluster (the GKE cluster
		// can be zonal or regional). Format:
		// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
		gke_cluster_target?: string
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target": close({
		node_pool_config?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config"]])

		// The target GKE node pool. Format:
		// 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{nodePool}'
		node_pool!: string

		// The roles associated with the GKE node pool.
		roles!: [...string]
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config": close({
		autoscaling?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config/$defs/autoscaling", list.MaxItems(1) & [..._#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config/$defs/autoscaling"]])
		config?: matchN(1, [_#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config/$defs/config", list.MaxItems(1) & [..._#defs."/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config/$defs/config"]])

		// The list of Compute Engine zones where node pool nodes
		// associated with a Dataproc on GKE virtual cluster will be
		// located.
		locations!: [...string]
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config/$defs/autoscaling": close({
		// The maximum number of nodes in the node pool. Must be >=
		// minNodeCount, and must be > 0.
		max_node_count?: number

		// The minimum number of nodes in the node pool. Must be >= 0 and
		// <= maxNodeCount.
		min_node_count?: number
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/gke_cluster_config/$defs/node_pool_target/$defs/node_pool_config/$defs/config": close({
		// The minimum number of nodes in the node pool. Must be >= 0 and
		// <= maxNodeCount.
		local_ssd_count?: number

		// The name of a Compute Engine machine type.
		machine_type?: string

		// Minimum CPU platform to be used by this instance. The instance
		// may be scheduled on the specified or a newer CPU platform.
		// Specify the friendly names of CPU platforms, such as "Intel
		// Haswell" or "Intel Sandy Bridge".
		min_cpu_platform?: string

		// Whether the nodes are created as preemptible VM instances.
		// Preemptible nodes cannot be used in a node pool with the
		// CONTROLLER role or in the DEFAULT node pool if the CONTROLLER
		// role is not assigned (the DEFAULT node pool will assume the
		// CONTROLLER role).
		preemptible?: bool

		// Spot flag for enabling Spot VM, which is a rebrand of the
		// existing preemptible flag.
		spot?: bool
	})

	_#defs: "/$defs/virtual_cluster_config/$defs/kubernetes_cluster_config/$defs/kubernetes_software_config": close({
		// The components that should be installed in this Dataproc
		// cluster. The key must be a string from the KubernetesComponent
		// enumeration. The value is the version of the software to be
		// installed.
		component_version!: [string]: string

		// The properties to set on daemon config files. Property keys are
		// specified in prefix:property format, for example
		// spark:spark.kubernetes.container.image.
		properties?: [string]: string
	})
}
