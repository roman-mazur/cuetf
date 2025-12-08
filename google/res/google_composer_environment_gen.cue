package res

import "list"

#google_composer_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_composer_environment")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// User-defined labels for this environment. The labels map can
		// contain no more than 64 entries. Entries of the labels map are
		// UTF8 strings that comply with the following restrictions:
		// Label keys must be between 1 and 63 characters long and must
		// conform to the following regular expression:
		// [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and
		// 63 characters long and must conform to the regular expression
		// ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be
		// associated with a given environment. Both keys and values must
		// be <= 128 bytes in size.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Name of the environment.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
		config?: matchN(1, [#config, list.MaxItems(1) & [...#config]])

		// The location or Compute Engine region for the environment.
		region?: string
		storage_config?: matchN(1, [#storage_config, list.MaxItems(1) & [...#storage_config]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#config: close({
		// The URI of the Apache Airflow Web UI hosted within this
		// environment.
		airflow_uri?: string

		// The Cloud Storage prefix of the DAGs for this environment.
		// Although Cloud Storage objects reside in a flat namespace, a
		// hierarchical file tree can be simulated using '/'-delimited
		// object name prefixes. DAG objects for this environment reside
		// in a simulated directory with this prefix.
		dag_gcs_prefix?: string

		// Optional. If true, builds performed during operations that
		// install Python packages have only private connectivity to
		// Google services. If false, the builds also have access to the
		// internet.
		enable_private_builds_only?: bool

		// Optional. If true, a private Composer environment will be
		// created.
		enable_private_environment?: bool

		// The size of the Cloud Composer environment. This field is
		// supported for Cloud Composer environments in versions
		// composer-2.*.*-airflow-*.*.* and newer.
		environment_size?: string

		// The Kubernetes Engine cluster used to run this environment.
		gke_cluster?: string
		data_retention_config?: matchN(1, [_#defs."/$defs/config/$defs/data_retention_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/data_retention_config"]])
		database_config?: matchN(1, [_#defs."/$defs/config/$defs/database_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/database_config"]])
		encryption_config?: matchN(1, [_#defs."/$defs/config/$defs/encryption_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/encryption_config"]])
		maintenance_window?: matchN(1, [_#defs."/$defs/config/$defs/maintenance_window", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/maintenance_window"]])
		master_authorized_networks_config?: matchN(1, [_#defs."/$defs/config/$defs/master_authorized_networks_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/master_authorized_networks_config"]])
		node_config?: matchN(1, [_#defs."/$defs/config/$defs/node_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/node_config"]])
		private_environment_config?: matchN(1, [_#defs."/$defs/config/$defs/private_environment_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/private_environment_config"]])
		recovery_config?: matchN(1, [_#defs."/$defs/config/$defs/recovery_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/recovery_config"]])

		// The number of nodes in the Kubernetes Engine cluster that will
		// be used to run this environment. This field is supported for
		// Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*.
		node_count?: number
		software_config?: matchN(1, [_#defs."/$defs/config/$defs/software_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/software_config"]])
		web_server_config?: matchN(1, [_#defs."/$defs/config/$defs/web_server_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/web_server_config"]])
		web_server_network_access_control?: matchN(1, [_#defs."/$defs/config/$defs/web_server_network_access_control", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/web_server_network_access_control"]])

		// Whether high resilience is enabled or not. This field is
		// supported for Cloud Composer environments in versions
		// composer-2.1.15-airflow-*.*.* and newer.
		resilience_mode?: string
		workloads_config?: matchN(1, [_#defs."/$defs/config/$defs/workloads_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/workloads_config"]])
	})

	#storage_config: close({
		// Optional. Name of an existing Cloud Storage bucket to be used
		// by the environment.
		bucket!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/config/$defs/data_retention_config": close({
		airflow_metadata_retention_config?: matchN(1, [_#defs."/$defs/config/$defs/data_retention_config/$defs/airflow_metadata_retention_config", [..._#defs."/$defs/config/$defs/data_retention_config/$defs/airflow_metadata_retention_config"]])
		task_logs_retention_config?: matchN(1, [_#defs."/$defs/config/$defs/data_retention_config/$defs/task_logs_retention_config", [..._#defs."/$defs/config/$defs/data_retention_config/$defs/task_logs_retention_config"]])
	})

	_#defs: "/$defs/config/$defs/data_retention_config/$defs/airflow_metadata_retention_config": close({
		// How many days data should be retained for. This field is
		// supported for Cloud Composer environments in composer 3 and
		// newer.
		retention_days?: number

		// Whether database retention is enabled or not. This field is
		// supported for Cloud Composer environments in composer 3 and
		// newer.
		retention_mode?: string
	})

	_#defs: "/$defs/config/$defs/data_retention_config/$defs/task_logs_retention_config": close({
		// Whether logs in cloud logging only is enabled or not. This
		// field is supported for Cloud Composer environments in versions
		// composer-2.0.32-airflow-2.1.4 and newer but not in composer-3*
		storage_mode?: string
	})

	_#defs: "/$defs/config/$defs/database_config": close({
		// Optional. Cloud SQL machine type used by Airflow database. It
		// has to be one of: db-n1-standard-2, db-n1-standard-4,
		// db-n1-standard-8 or db-n1-standard-16. If not specified,
		// db-n1-standard-2 will be used.
		machine_type?: string

		// Optional. Cloud SQL database preferred zone.
		zone?: string
	})

	_#defs: "/$defs/config/$defs/encryption_config": close({
		// Optional. Customer-managed Encryption Key available through
		// Google's Key Management Service. Cannot be updated.
		kms_key_name!: string
	})

	_#defs: "/$defs/config/$defs/maintenance_window": close({
		// Maintenance window end time. It is used only to calculate the
		// duration of the maintenance window. The value for end-time
		// must be in the future, relative to 'start_time'.
		end_time!: string

		// Maintenance window recurrence. Format is a subset of RFC-5545
		// (https://tools.ietf.org/html/rfc5545) 'RRULE'. The only
		// allowed values for 'FREQ' field are 'FREQ=DAILY' and
		// 'FREQ=WEEKLY;BYDAY=...'. Example values:
		// 'FREQ=WEEKLY;BYDAY=TU,WE', 'FREQ=DAILY'.
		recurrence!: string

		// Start time of the first recurrence of the maintenance window.
		start_time!: string
	})

	_#defs: "/$defs/config/$defs/master_authorized_networks_config": close({
		cidr_blocks?: matchN(1, [_#defs."/$defs/config/$defs/master_authorized_networks_config/$defs/cidr_blocks", [..._#defs."/$defs/config/$defs/master_authorized_networks_config/$defs/cidr_blocks"]])

		// Whether or not master authorized networks is enabled.
		enabled!: bool
	})

	_#defs: "/$defs/config/$defs/master_authorized_networks_config/$defs/cidr_blocks": close({
		// cidr_block must be specified in CIDR notation.
		cidr_block!: string

		// display_name is a field for users to identify CIDR blocks.
		display_name?: string
	})

	_#defs: "/$defs/config/$defs/node_config": close({
		// IPv4 cidr range that will be used by Composer internal
		// components.
		composer_internal_ipv4_cidr_block?: string

		// PSC (Private Service Connect) Network entry point. Customers
		// can pre-create the Network Attachment and point Cloud Composer
		// environment to use. It is possible to share network attachment
		// among many environments, provided enough IP addresses are
		// available.
		composer_network_attachment?: string

		// The disk size in GB used for node VMs. Minimum size is 20GB. If
		// unspecified, defaults to 100GB. Cannot be updated. This field
		// is supported for Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*.
		disk_size_gb?: number

		// Deploys 'ip-masq-agent' daemon set in the GKE cluster and
		// defines nonMasqueradeCIDRs equals to pod IP range so IP
		// masquerading is used for all destination addresses, except
		// between pods traffic. See:
		// https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent
		enable_ip_masq_agent?: bool

		// The Compute Engine machine type used for cluster instances,
		// specified as a name or relative resource name. For example:
		// "projects/{project}/zones/{zone}/machineTypes/{machineType}".
		// Must belong to the enclosing environment's project and
		// region/zone. This field is supported for Cloud Composer
		// environments in versions composer-1.*.*-airflow-*.*.*.
		machine_type?: string

		// The Compute Engine machine type used for cluster instances,
		// specified as a name or relative resource name. For example:
		// "projects/{project}/zones/{zone}/machineTypes/{machineType}".
		// Must belong to the enclosing environment's project and
		// region/zone. The network must belong to the environment's
		// project. If unspecified, the "default" network ID in the
		// environment's project is used. If a Custom Subnet Network is
		// provided, subnetwork must also be provided.
		network?: string

		// The set of Google API scopes to be made available on all node
		// VMs. Cannot be updated. If empty, defaults to
		// ["https://www.googleapis.com/auth/cloud-platform"]. This field
		// is supported for Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*.
		oauth_scopes?: [...string]

		// The Google Cloud Platform Service Account to be used by the
		// node VMs. If a service account is not specified, the "default"
		// Compute Engine service account is used. Cannot be updated. If
		// given, note that the service account must have
		// roles/composer.worker for any GCP resources created under the
		// Cloud Composer Environment.
		service_account?: string
		ip_allocation_policy?: matchN(1, [_#defs."/$defs/config/$defs/node_config/$defs/ip_allocation_policy", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/node_config/$defs/ip_allocation_policy"]])

		// The Compute Engine subnetwork to be used for machine
		// communications, specified as a self-link, relative resource
		// name (e.g.
		// "projects/{project}/regions/{region}/subnetworks/{subnetwork}"),
		// or by name. If subnetwork is provided, network must also be
		// provided and the subnetwork must belong to the enclosing
		// environment's project and region.
		subnetwork?: string

		// The list of instance tags applied to all node VMs. Tags are
		// used to identify valid sources or targets for network
		// firewalls. Each tag within the list must comply with RFC1035.
		// Cannot be updated.
		tags?: [...string]

		// The Compute Engine zone in which to deploy the VMs running the
		// Apache Airflow software, specified as the zone name or
		// relative resource name (e.g.
		// "projects/{project}/zones/{zone}"). Must belong to the
		// enclosing environment's project and region. This field is
		// supported for Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*.
		zone?: string
	})

	_#defs: "/$defs/config/$defs/node_config/$defs/ip_allocation_policy": close({
		// The IP address range used to allocate IP addresses to pods in
		// the cluster. For Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*, this field is applicable only
		// when use_ip_aliases is true. Set to blank to have GKE choose a
		// range with the default size. Set to /netmask (e.g. /14) to
		// have GKE choose a range with a specific netmask. Set to a CIDR
		// notation (e.g. 10.96.0.0/14) from the RFC-1918 private
		// networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to
		// pick a specific range to use. Specify either
		// cluster_secondary_range_name or cluster_ipv4_cidr_block but
		// not both.
		cluster_ipv4_cidr_block?: string

		// The name of the cluster's secondary range used to allocate IP
		// addresses to pods. Specify either cluster_secondary_range_name
		// or cluster_ipv4_cidr_block but not both. For Cloud Composer
		// environments in versions composer-1.*.*-airflow-*.*.*, this
		// field is applicable only when use_ip_aliases is true.
		cluster_secondary_range_name?: string

		// The IP address range used to allocate IP addresses in this
		// cluster. For Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*, this field is applicable only
		// when use_ip_aliases is true. Set to blank to have GKE choose a
		// range with the default size. Set to /netmask (e.g. /14) to
		// have GKE choose a range with a specific netmask. Set to a CIDR
		// notation (e.g. 10.96.0.0/14) from the RFC-1918 private
		// networks (e.g. 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) to
		// pick a specific range to use. Specify either
		// services_secondary_range_name or services_ipv4_cidr_block but
		// not both.
		services_ipv4_cidr_block?: string

		// The name of the services' secondary range used to allocate IP
		// addresses to the cluster. Specify either
		// services_secondary_range_name or services_ipv4_cidr_block but
		// not both. For Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*, this field is applicable only
		// when use_ip_aliases is true.
		services_secondary_range_name?: string

		// Whether or not to enable Alias IPs in the GKE cluster. If true,
		// a VPC-native cluster is created. Defaults to true if the
		// ip_allocation_policy block is present in config. This field is
		// only supported for Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*. Environments in newer versions
		// always use VPC-native GKE clusters.
		use_ip_aliases?: bool
	})

	_#defs: "/$defs/config/$defs/private_environment_config": close({
		// When specified, the environment will use Private Service
		// Connect instead of VPC peerings to connect to Cloud SQL in the
		// Tenant Project, and the PSC endpoint in the Customer Project
		// will use an IP address from this subnetwork. This field is
		// supported for Cloud Composer environments in versions
		// composer-2.*.*-airflow-*.*.* and newer.
		cloud_composer_connection_subnetwork?: string

		// The CIDR block from which IP range for Cloud Composer Network
		// in tenant project will be reserved. Needs to be disjoint from
		// private_cluster_config.master_ipv4_cidr_block and
		// cloud_sql_ipv4_cidr_block. This field is supported for Cloud
		// Composer environments in versions composer-2.*.*-airflow-*.*.*
		// and newer.
		cloud_composer_network_ipv4_cidr_block?: string

		// The CIDR block from which IP range in tenant project will be
		// reserved for Cloud SQL. Needs to be disjoint from
		// web_server_ipv4_cidr_block.
		cloud_sql_ipv4_cidr_block?: string

		// Mode of internal communication within the Composer environment.
		// Must be one of "VPC_PEERING" or "PRIVATE_SERVICE_CONNECT".
		connection_type?: string

		// If true, access to the public endpoint of the GKE cluster is
		// denied. If this field is set to true,
		// ip_allocation_policy.use_ip_aliases must be set to true for
		// Cloud Composer environments in versions
		// composer-1.*.*-airflow-*.*.*.
		enable_private_endpoint?: bool

		// When enabled, IPs from public (non-RFC1918) ranges can be used
		// for ip_allocation_policy.cluster_ipv4_cidr_block and
		// ip_allocation_policy.service_ipv4_cidr_block.
		enable_privately_used_public_ips?: bool

		// The IP range in CIDR notation to use for the hosted master
		// network. This range is used for assigning internal IP
		// addresses to the cluster master or set of masters and to the
		// internal load balancer virtual IP. This range must not overlap
		// with any other ranges in use within the cluster's network. If
		// left blank, the default value of '172.16.0.0/28' is used.
		master_ipv4_cidr_block?: string

		// The CIDR block from which IP range for web server will be
		// reserved. Needs to be disjoint from master_ipv4_cidr_block and
		// cloud_sql_ipv4_cidr_block. This field is supported for Cloud
		// Composer environments in versions
		// composer-1.*.*-airflow-*.*.*.
		web_server_ipv4_cidr_block?: string
	})

	_#defs: "/$defs/config/$defs/recovery_config": close({
		scheduled_snapshots_config?: matchN(1, [_#defs."/$defs/config/$defs/recovery_config/$defs/scheduled_snapshots_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/recovery_config/$defs/scheduled_snapshots_config"]])
	})

	_#defs: "/$defs/config/$defs/recovery_config/$defs/scheduled_snapshots_config": close({
		// When enabled, Cloud Composer periodically saves snapshots of
		// your environment to a Cloud Storage bucket.
		enabled!: bool

		// Snapshot schedule, in the unix-cron format.
		snapshot_creation_schedule?: string

		// the URI of a bucket folder where to save the snapshot.
		snapshot_location?: string

		// A time zone for the schedule. This value is a time offset and
		// does not take into account daylight saving time changes. Valid
		// values are from UTC-12 to UTC+12. Examples: UTC, UTC-01,
		// UTC+03.
		time_zone?: string
	})

	_#defs: "/$defs/config/$defs/software_config": close({
		// Apache Airflow configuration properties to override. Property
		// keys contain the section and property names, separated by a
		// hyphen, for example "core-dags_are_paused_at_creation".
		// Section names must not contain hyphens ("-"), opening square
		// brackets ("["), or closing square brackets ("]"). The property
		// name must not be empty and cannot contain "=" or ";". Section
		// and property names cannot contain characters: "." Apache
		// Airflow configuration property names must be written in
		// snake_case. Property values can contain any character, and can
		// be written in any lower/upper case format. Certain Apache
		// Airflow configuration property values are blacklisted, and
		// cannot be overridden.
		airflow_config_overrides?: [string]: string

		// Additional environment variables to provide to the Apache
		// Airflow scheduler, worker, and webserver processes.
		// Environment variable names must match the regular expression
		// [a-zA-Z_][a-zA-Z0-9_]*. They cannot specify Apache Airflow
		// software configuration overrides (they cannot match the
		// regular expression AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+), and they
		// cannot match any of the following reserved names: AIRFLOW_HOME
		// C_FORCE_ROOT CONTAINER_NAME DAGS_FOLDER GCP_PROJECT GCS_BUCKET
		// GKE_CLUSTER_NAME SQL_DATABASE SQL_INSTANCE SQL_PASSWORD
		// SQL_PROJECT SQL_REGION SQL_USER.
		env_variables?: [string]: string

		// The version of the software running in the environment. This
		// encapsulates both the version of Cloud Composer functionality
		// and the version of Apache Airflow. It must match the regular
		// expression
		// composer-([0-9]+(\.[0-9]+\.[0-9]+(-preview\.[0-9]+)?)?|latest)-airflow-([0-9]+(\.[0-9]+(\.[0-9]+)?)?).
		// The Cloud Composer portion of the image version is a full
		// semantic version, or an alias in the form of major version
		// number or 'latest'. The Apache Airflow portion of the image
		// version is a full semantic version that points to one of the
		// supported Apache Airflow versions, or an alias in the form of
		// only major or major.minor versions specified. See
		// documentation for more details and version list.
		image_version?: string

		// Custom Python Package Index (PyPI) packages to be installed in
		// the environment. Keys refer to the lowercase package name
		// (e.g. "numpy"). Values are the lowercase extras and version
		// specifier (e.g. "==1.12.0", "[devel,gcp_api]",
		// "[devel]>=1.8.2, <1.9.2"). To specify a package without
		// pinning it to a version specifier, use the empty string as the
		// value.
		pypi_packages?: [string]: string

		// The major version of Python used to run the Apache Airflow
		// scheduler, worker, and webserver processes. Can be set to '2'
		// or '3'. If not specified, the default is '2'. Cannot be
		// updated. This field is supported for Cloud Composer
		// environments in versions composer-1.*.*-airflow-*.*.*.
		// Environments in newer versions always use Python major version
		// 3.
		python_version?: string

		// The number of schedulers for Airflow. This field is supported
		// for Cloud Composer environments in versions
		// composer-1.*.*-airflow-2.*.*.
		scheduler_count?: number
		cloud_data_lineage_integration?: matchN(1, [_#defs."/$defs/config/$defs/software_config/$defs/cloud_data_lineage_integration", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/software_config/$defs/cloud_data_lineage_integration"]])

		// Should be either 'ENABLED' or 'DISABLED'. Defaults to
		// 'ENABLED'. Used in Composer 3.
		web_server_plugins_mode?: string
	})

	_#defs: "/$defs/config/$defs/software_config/$defs/cloud_data_lineage_integration": close({
		// Whether or not Cloud Data Lineage integration is enabled.
		enabled!: bool
	})

	_#defs: "/$defs/config/$defs/web_server_config": close({
		// Optional. Machine type on which Airflow web server is running.
		// It has to be one of: composer-n1-webserver-2,
		// composer-n1-webserver-4 or composer-n1-webserver-8. If not
		// specified, composer-n1-webserver-2 will be used. Value custom
		// is returned only in response, if Airflow web server parameters
		// were manually changed to a non-standard values.
		machine_type!: string
	})

	_#defs: "/$defs/config/$defs/web_server_network_access_control": close({
		allowed_ip_range?: matchN(1, [_#defs."/$defs/config/$defs/web_server_network_access_control/$defs/allowed_ip_range", [..._#defs."/$defs/config/$defs/web_server_network_access_control/$defs/allowed_ip_range"]])
	})

	_#defs: "/$defs/config/$defs/web_server_network_access_control/$defs/allowed_ip_range": close({
		// A description of this ip range.
		description?: string

		// IP address or range, defined using CIDR notation, of requests
		// that this rule applies to. Examples: 192.168.1.1 or
		// 192.168.0.0/16 or 2001:db8::/32 or
		// 2001:0db8:0000:0042:0000:8a2e:0370:7334. IP range prefixes
		// should be properly truncated. For example, 1.2.3.4/24 should
		// be truncated to 1.2.3.0/24. Similarly, for IPv6,
		// 2001:db8::1/32 should be truncated to 2001:db8::/32.
		value!: string
	})

	_#defs: "/$defs/config/$defs/workloads_config": close({
		dag_processor?: matchN(1, [_#defs."/$defs/config/$defs/workloads_config/$defs/dag_processor", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/workloads_config/$defs/dag_processor"]])
		scheduler?: matchN(1, [_#defs."/$defs/config/$defs/workloads_config/$defs/scheduler", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/workloads_config/$defs/scheduler"]])
		triggerer?: matchN(1, [_#defs."/$defs/config/$defs/workloads_config/$defs/triggerer", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/workloads_config/$defs/triggerer"]])
		web_server?: matchN(1, [_#defs."/$defs/config/$defs/workloads_config/$defs/web_server", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/workloads_config/$defs/web_server"]])
		worker?: matchN(1, [_#defs."/$defs/config/$defs/workloads_config/$defs/worker", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/workloads_config/$defs/worker"]])
	})

	_#defs: "/$defs/config/$defs/workloads_config/$defs/dag_processor": close({
		// Number of DAG processors.
		count?: number

		// CPU request and limit for DAG processor.
		cpu?: number

		// Memory (GB) request and limit for DAG processor.
		memory_gb?: number

		// Storage (GB) request and limit for DAG processor.
		storage_gb?: number
	})

	_#defs: "/$defs/config/$defs/workloads_config/$defs/scheduler": close({
		// The number of schedulers.
		count?: number

		// CPU request and limit for a single Airflow scheduler replica
		cpu?: number

		// Memory (GB) request and limit for a single Airflow scheduler
		// replica.
		memory_gb?: number

		// Storage (GB) request and limit for a single Airflow scheduler
		// replica.
		storage_gb?: number
	})

	_#defs: "/$defs/config/$defs/workloads_config/$defs/triggerer": close({
		// The number of triggerers.
		count!: number

		// CPU request and limit for a single Airflow triggerer replica.
		cpu!: number

		// Memory (GB) request and limit for a single Airflow triggerer
		// replica.
		memory_gb!: number
	})

	_#defs: "/$defs/config/$defs/workloads_config/$defs/web_server": close({
		// CPU request and limit for Airflow web server.
		cpu?: number

		// Memory (GB) request and limit for Airflow web server.
		memory_gb?: number

		// Storage (GB) request and limit for Airflow web server.
		storage_gb?: number
	})

	_#defs: "/$defs/config/$defs/workloads_config/$defs/worker": close({
		// CPU request and limit for a single Airflow worker replica.
		cpu?: number

		// Maximum number of workers for autoscaling.
		max_count?: number

		// Memory (GB) request and limit for a single Airflow worker
		// replica.
		memory_gb?: number

		// Minimum number of workers for autoscaling.
		min_count?: number

		// Storage (GB) request and limit for a single Airflow worker
		// replica.
		storage_gb?: number
	})
}
