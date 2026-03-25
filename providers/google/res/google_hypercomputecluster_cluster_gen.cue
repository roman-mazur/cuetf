package res

import "list"

#google_hypercomputecluster_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_hypercomputecluster_cluster")
	close({
		compute_resources?: matchN(1, [#compute_resources, [...#compute_resources]])
		network_resources?: matchN(1, [#network_resources, [...#network_resources]])
		orchestrator?: matchN(1, [#orchestrator, list.MaxItems(1) & [...#orchestrator]])
		storage_resources?: matchN(1, [#storage_resources, [...#storage_resources]])
		timeouts?: #timeouts

		// ID of the cluster to create. Must conform to
		// [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034)
		// (lower-case,
		// alphanumeric, and at most 63 characters).
		cluster_id!: string

		// Time that the cluster was originally created.
		create_time?: string

		// User-provided description of the cluster.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// [Labels](https://cloud.google.com/compute/docs/labeling-resources)
		// applied
		// to the cluster. Labels can be used to organize clusters and to
		// filter them
		// in queries.
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

		// Identifier. [Relative resource
		// name](https://google.aip.dev/122) of the cluster, in the
		// format
		// 'projects/{project}/locations/{location}/clusters/{cluster}'.
		name?:    string
		project?: string

		// Indicates whether changes to the cluster are currently in
		// flight. If this
		// is 'true', then the current state might not match the cluster's
		// intended
		// state.
		reconciling?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time that the cluster was most recently updated.
		update_time?: string
	})

	#compute_resources: close({
		config!: matchN(1, [_#defs."/$defs/compute_resources/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/compute_resources/$defs/config"]])
		id!: string
	})

	#network_resources: close({
		config?: matchN(1, [_#defs."/$defs/network_resources/$defs/config", list.MaxItems(1) & [..._#defs."/$defs/network_resources/$defs/config"]])
		id!: string

		// A reference to a [VPC
		// network](https://cloud.google.com/vpc/docs/vpc) in
		// Google Compute Engine.
		network?: [...close({
			network?:    string
			subnetwork?: string
		})]
	})

	#orchestrator: close({
		slurm?: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm", list.MaxItems(1) & [..._#defs."/$defs/orchestrator/$defs/slurm"]])
	})

	#storage_resources: close({
		config!: matchN(1, [_#defs."/$defs/storage_resources/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_resources/$defs/config"]])

		// A reference to a [Google Cloud
		// Storage](https://cloud.google.com/storage)
		// bucket.
		bucket?: [...close({
			bucket?: string
		})]

		// A reference to a
		// [Filestore](https://cloud.google.com/filestore) instance.
		filestore?: [...close({
			filestore?: string
		})]
		id!: string

		// A reference to a [Managed
		// Lustre](https://cloud.google.com/products/managed-lustre)
		// instance.
		lustre?: [...close({
			lustre?: string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/compute_resources/$defs/config": close({
		new_flex_start_instances?: matchN(1, [_#defs."/$defs/compute_resources/$defs/config/$defs/new_flex_start_instances", list.MaxItems(1) & [..._#defs."/$defs/compute_resources/$defs/config/$defs/new_flex_start_instances"]])
		new_on_demand_instances?: matchN(1, [_#defs."/$defs/compute_resources/$defs/config/$defs/new_on_demand_instances", list.MaxItems(1) & [..._#defs."/$defs/compute_resources/$defs/config/$defs/new_on_demand_instances"]])
		new_reserved_instances?: matchN(1, [_#defs."/$defs/compute_resources/$defs/config/$defs/new_reserved_instances", list.MaxItems(1) & [..._#defs."/$defs/compute_resources/$defs/config/$defs/new_reserved_instances"]])
		new_spot_instances?: matchN(1, [_#defs."/$defs/compute_resources/$defs/config/$defs/new_spot_instances", list.MaxItems(1) & [..._#defs."/$defs/compute_resources/$defs/config/$defs/new_spot_instances"]])
	})

	_#defs: "/$defs/compute_resources/$defs/config/$defs/new_flex_start_instances": close({
		// Name of the Compute Engine [machine
		// type](https://cloud.google.com/compute/docs/machine-resource)
		// to use, e.g.
		// 'n2-standard-2'.
		machine_type!: string

		// Specifies the time limit for created instances. Instances will
		// be
		// terminated at the end of this duration.
		max_duration!: string

		// Name of the zone in which VM instances should run, e.g.,
		// 'us-central1-a'.
		// Must be in the same region as the cluster, and must match the
		// zone of any
		// other resources specified in the cluster.
		zone!: string
	})

	_#defs: "/$defs/compute_resources/$defs/config/$defs/new_on_demand_instances": close({
		// Name of the Compute Engine [machine
		// type](https://cloud.google.com/compute/docs/machine-resource)
		// to use, e.g.
		// 'n2-standard-2'.
		machine_type!: string

		// Name of the zone in which VM instances should run, e.g.,
		// 'us-central1-a'.
		// Must be in the same region as the cluster, and must match the
		// zone of any
		// other resources specified in the cluster.
		zone!: string
	})

	_#defs: "/$defs/compute_resources/$defs/config/$defs/new_reserved_instances": close({
		// Name of the reservation from which VM instances should be
		// created, in the
		// format
		// 'projects/{project}/zones/{zone}/reservations/{reservation}'.
		reservation?: string
	})

	_#defs: "/$defs/compute_resources/$defs/config/$defs/new_spot_instances": close({
		// Name of the Compute Engine [machine
		// type](https://cloud.google.com/compute/docs/machine-resource)
		// to use, e.g.
		// 'n2-standard-2'.
		machine_type!: string

		// Specifies the termination action of the instance
		// Possible values:
		// STOP
		// DELETE
		termination_action?: string

		// Name of the zone in which VM instances should run, e.g.,
		// 'us-central1-a'.
		// Must be in the same region as the cluster, and must match the
		// zone of any
		// other resources specified in the cluster.
		zone!: string
	})

	_#defs: "/$defs/network_resources/$defs/config": close({
		existing_network?: matchN(1, [_#defs."/$defs/network_resources/$defs/config/$defs/existing_network", list.MaxItems(1) & [..._#defs."/$defs/network_resources/$defs/config/$defs/existing_network"]])
		new_network?: matchN(1, [_#defs."/$defs/network_resources/$defs/config/$defs/new_network", list.MaxItems(1) & [..._#defs."/$defs/network_resources/$defs/config/$defs/new_network"]])
	})

	_#defs: "/$defs/network_resources/$defs/config/$defs/existing_network": close({
		// Name of the network to import, in the format
		// 'projects/{project}/global/networks/{network}'.
		network!: string

		// Particular subnetwork to use, in the format
		// 'projects/{project}/regions/{region}/subnetworks/{subnetwork}'.
		subnetwork!: string
	})

	_#defs: "/$defs/network_resources/$defs/config/$defs/new_network": close({
		// Description of the network. Maximum of 2048 characters.
		description?: string

		// Name of the network to create, in the format
		// 'projects/{project}/global/networks/{network}'.
		network!: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm": close({
		login_nodes!: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/login_nodes", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/login_nodes"]])
		node_sets!: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets", [_, ...] & [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets"]])
		partitions!: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/partitions", [_, ...] & [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/partitions"]])

		// Default partition to use for submitted jobs that do not
		// explicitly specify
		// a partition. Required if and only if there is more than one
		// partition, in
		// which case it must match the id of one of the partitions.
		default_partition?: string

		// Slurm [epilog
		// scripts](https://slurm.schedmd.com/prolog_epilog.html), which
		// will be executed by compute nodes whenever a node finishes
		// running a job.
		// Values must not be empty.
		epilog_bash_scripts?: [...string]

		// Slurm [prolog
		// scripts](https://slurm.schedmd.com/prolog_epilog.html), which
		// will be executed by compute nodes before a node begins running
		// a new job.
		// Values must not be empty.
		prolog_bash_scripts?: [...string]
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/login_nodes": close({
		boot_disk?: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/login_nodes/$defs/boot_disk", list.MaxItems(1) & [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/login_nodes/$defs/boot_disk"]])
		storage_configs?: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/login_nodes/$defs/storage_configs", [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/login_nodes/$defs/storage_configs"]])

		// Number of login node instances to create.
		count!: string

		// Whether [OS
		// Login](https://cloud.google.com/compute/docs/oslogin) should
		// be
		// enabled on login node instances.
		enable_os_login?: bool

		// Whether login node instances should be assigned [external IP
		// addresses](https://cloud.google.com/compute/docs/ip-addresses#externaladdresses).
		enable_public_ips?: bool

		// Information about the login node instances that were created in
		// Compute
		// Engine.
		instances?: [...close({
			instance?: string
		})]

		// [Labels](https://cloud.google.com/compute/docs/labeling-resources)
		// that
		// should be applied to each login node instance.
		labels?: [string]: string

		// Name of the Compute Engine [machine
		// type](https://cloud.google.com/compute/docs/machine-resource)
		// to use for
		// login nodes, e.g. 'n2-standard-2'.
		machine_type!: string

		// [Startup
		// script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)
		// to be run on each login node instance. Max 256KB.
		// The script must complete within the system-defined default
		// timeout of 5
		// minutes. For tasks that require more time, consider running
		// them in the
		// background using methods such as '&' or 'nohup'.
		startup_script?: string

		// Name of the zone in which login nodes should run, e.g.,
		// 'us-central1-a'.
		// Must be in the same region as the cluster, and must match the
		// zone of any
		// other resources specified in the cluster.
		zone!: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/login_nodes/$defs/boot_disk": close({
		// Size of the disk in gigabytes. Must be at least 10GB.
		size_gb!: string

		// [Persistent disk
		// type](https://cloud.google.com/compute/docs/disks#disk-types),
		// in the
		// format 'projects/{project}/zones/{zone}/diskTypes/{disk_type}'.
		type!: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/login_nodes/$defs/storage_configs": close({
		// ID of the storage resource to mount, which must match a key in
		// the
		// cluster's [storage_resources](Cluster.storage_resources).
		id!: string

		// A directory inside the VM instance's file system where the
		// storage resource
		// should be mounted (e.g., '/mnt/share').
		local_mount!: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/node_sets": close({
		compute_instance?: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/compute_instance", list.MaxItems(1) & [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/compute_instance"]])
		storage_configs?: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/storage_configs", [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/storage_configs"]])

		// ID of the compute resource on which this nodeset will run. Must
		// match a key
		// in the cluster's
		// [compute_resources](Cluster.compute_resources).
		compute_id?: string

		// Identifier for the nodeset, which allows it to be referenced by
		// partitions.
		// Must conform to
		// [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034)
		// (lower-case,
		// alphanumeric, and at most 63 characters).
		id!: string

		// Controls how many additional nodes a cluster can bring online
		// to handle
		// workloads. Set this value to enable dynamic node creation and
		// limit the
		// number of additional nodes the cluster can bring online. Leave
		// empty if you
		// do not want the cluster to create nodes dynamically, and
		// instead rely only
		// on static nodes.
		max_dynamic_node_count?: string

		// Number of nodes to be statically created for this nodeset. The
		// cluster will
		// attempt to ensure that at least this many nodes exist at all
		// times.
		static_node_count?: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/compute_instance": close({
		boot_disk?: matchN(1, [_#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/compute_instance/$defs/boot_disk", list.MaxItems(1) & [..._#defs."/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/compute_instance/$defs/boot_disk"]])

		// [Labels](https://cloud.google.com/compute/docs/labeling-resources)
		// that
		// should be applied to each VM instance in the nodeset.
		labels?: [string]: string

		// [Startup
		// script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)
		// to be run on each VM instance in the nodeset. Max 256KB.
		startup_script?: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/compute_instance/$defs/boot_disk": close({
		// Size of the disk in gigabytes. Must be at least 10GB.
		size_gb!: string

		// [Persistent disk
		// type](https://cloud.google.com/compute/docs/disks#disk-types),
		// in the
		// format 'projects/{project}/zones/{zone}/diskTypes/{disk_type}'.
		type!: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/node_sets/$defs/storage_configs": close({
		// ID of the storage resource to mount, which must match a key in
		// the
		// cluster's [storage_resources](Cluster.storage_resources).
		id!: string

		// A directory inside the VM instance's file system where the
		// storage resource
		// should be mounted (e.g., '/mnt/share').
		local_mount!: string
	})

	_#defs: "/$defs/orchestrator/$defs/slurm/$defs/partitions": close({
		// ID of the partition, which is how users will identify it. Must
		// conform to
		// [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034)
		// (lower-case,
		// alphanumeric, and at most 63 characters).
		id!: string

		// IDs of the nodesets that make up this partition. Values must
		// match
		// SlurmNodeSet.id.
		node_set_ids!: [...string]
	})

	_#defs: "/$defs/storage_resources/$defs/config": close({
		existing_bucket?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/existing_bucket", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/existing_bucket"]])
		existing_filestore?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/existing_filestore", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/existing_filestore"]])
		existing_lustre?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/existing_lustre", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/existing_lustre"]])
		new_bucket?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/new_bucket", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/new_bucket"]])
		new_filestore?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/new_filestore", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/new_filestore"]])
		new_lustre?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/new_lustre", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/new_lustre"]])
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/existing_bucket": close({
		// Name of the Cloud Storage bucket to import.
		bucket!: string
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/existing_filestore": close({
		// Name of the Filestore instance to import, in the format
		// 'projects/{project}/locations/{location}/instances/{instance}'
		filestore!: string
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/existing_lustre": close({
		// Name of the Managed Lustre instance to import, in the format
		// 'projects/{project}/locations/{location}/instances/{instance}'
		lustre!: string
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/new_bucket": close({
		autoclass?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/new_bucket/$defs/autoclass", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/new_bucket/$defs/autoclass"]])
		hierarchical_namespace?: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/new_bucket/$defs/hierarchical_namespace", list.MaxItems(1) & [..._#defs."/$defs/storage_resources/$defs/config/$defs/new_bucket/$defs/hierarchical_namespace"]])

		// Name of the Cloud Storage bucket to create.
		bucket!: string

		// If set, uses the provided storage class as the bucket's default
		// storage
		// class.
		// Possible values:
		// STANDARD
		// NEARLINE
		// COLDLINE
		// ARCHIVE
		storage_class?: string
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/new_bucket/$defs/autoclass": close({
		// Enables Auto-class feature.
		enabled!: bool
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/new_bucket/$defs/hierarchical_namespace": close({
		// Enables hierarchical namespace setup for the bucket.
		enabled?: bool
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/new_filestore": close({
		file_shares!: matchN(1, [_#defs."/$defs/storage_resources/$defs/config/$defs/new_filestore/$defs/file_shares", [_, ...] & [..._#defs."/$defs/storage_resources/$defs/config/$defs/new_filestore/$defs/file_shares"]])

		// Description of the instance. Maximum of 2048 characters.
		description?: string

		// Name of the Filestore instance to create, in the format
		// 'projects/{project}/locations/{location}/instances/{instance}'
		filestore!: string

		// Access protocol to use for all file shares in the instance.
		// Defaults to NFS
		// V3 if not set.
		// Possible values:
		// NFSV3
		// NFSV41 Possible values: ["PROTOCOL_UNSPECIFIED", "NFSV3",
		// "NFSV41"]
		protocol?: string

		// Service tier to use for the instance.
		// Possible values:
		// ZONAL
		// REGIONAL Possible values: ["TIER_UNSPECIFIED", "ZONAL",
		// "REGIONAL"]
		tier!: string
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/new_filestore/$defs/file_shares": close({
		// Size of the filestore in GB. Must be between 1024 and 102400,
		// and must meet
		// scalability requirements described at
		// https://cloud.google.com/filestore/docs/service-tiers.
		capacity_gb!: string

		// Filestore share location
		file_share!: string
	})

	_#defs: "/$defs/storage_resources/$defs/config/$defs/new_lustre": close({
		// Storage capacity of the instance in gibibytes (GiB). Allowed
		// values are
		// between 18000 and 7632000.
		capacity_gb!: string

		// Description of the Managed Lustre instance. Maximum of 2048
		// characters.
		description?: string

		// Filesystem name for this instance. This name is used by
		// client-side tools,
		// including when mounting the instance. Must be 8 characters or
		// less and can
		// only contain letters and numbers.
		filesystem!: string

		// Name of the Managed Lustre instance to create, in the format
		// 'projects/{project}/locations/{location}/instances/{instance}'
		lustre!: string
	})
}
