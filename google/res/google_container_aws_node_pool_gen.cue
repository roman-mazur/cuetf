package res

import "list"

#google_container_aws_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_aws_node_pool")
	close({
		// Optional. Annotations on the node pool. This field has the same
		// restrictions as Kubernetes annotations. The total size of all
		// keys and values combined is limited to 256k. Key can have 2
		// segments: prefix (optional) and name (required), separated by
		// a slash (/). Prefix must be a DNS subdomain. Name must be 63
		// characters or less, begin and end with alphanumerics, with
		// dashes (-), underscores (_), dots (.), and alphanumerics
		// between.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field `effective_annotations` for all of
		// the annotations present on the resource.
		annotations?: [string]: string
		autoscaling?: matchN(1, [#autoscaling, list.MaxItems(1) & [_, ...] & [...#autoscaling]])

		// The awsCluster for the resource
		cluster!: string

		// Output only. The time at which this node pool was created.
		create_time?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// Allows clients to perform consistent read-modify-writes through
		// optimistic concurrency control. May be sent on update and
		// delete requests to ensure the client has an up-to-date value
		// before proceeding.
		etag?: string

		// The location for the resource
		location!: string

		// The name of this resource.
		name!: string

		// The project for the resource
		project?: string
		id?:      string

		// Output only. If set, there are currently changes in flight to
		// the node pool.
		reconciling?: bool
		config?: matchN(1, [#config, list.MaxItems(1) & [_, ...] & [...#config]])

		// Output only. The lifecycle state of the node pool. Possible
		// values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING,
		// STOPPING, ERROR, DEGRADED
		state?: string
		kubelet_config?: matchN(1, [#kubelet_config, list.MaxItems(1) & [...#kubelet_config]])
		management?: matchN(1, [#management, list.MaxItems(1) & [...#management]])
		max_pods_constraint?: matchN(1, [#max_pods_constraint, list.MaxItems(1) & [_, ...] & [...#max_pods_constraint]])
		timeouts?: #timeouts
		update_settings?: matchN(1, [#update_settings, list.MaxItems(1) & [...#update_settings]])

		// The subnet where the node pool node run.
		subnet_id!: string

		// Output only. A globally unique identifier for the node pool.
		uid?: string

		// Output only. The time at which this node pool was last updated.
		update_time?: string

		// The Kubernetes version to run on this node pool (e.g.
		// `1.19.10-gke.1000`). You can list all supported versions on a
		// given Google Cloud region by calling GetAwsServerConfig.
		version!: string
	})

	#autoscaling: close({
		// Maximum number of nodes in the NodePool. Must be >=
		// min_node_count.
		max_node_count!: number

		// Minimum number of nodes in the NodePool. Must be >= 1 and <=
		// max_node_count.
		min_node_count!: number
	})

	#config: close({
		// The name of the AWS IAM role assigned to nodes in the pool.
		iam_instance_profile!: string
		autoscaling_metrics_collection?: matchN(1, [_#defs."/$defs/config/$defs/autoscaling_metrics_collection", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/autoscaling_metrics_collection"]])

		// Optional. The AWS instance type. When unspecified, it defaults
		// to `m5.large`.
		instance_type?: string

		// Optional. The initial labels assigned to nodes of this node
		// pool. An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		labels?: [string]: string
		config_encryption?: matchN(1, [_#defs."/$defs/config/$defs/config_encryption", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/config_encryption"]])
		proxy_config?: matchN(1, [_#defs."/$defs/config/$defs/proxy_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/proxy_config"]])
		root_volume?: matchN(1, [_#defs."/$defs/config/$defs/root_volume", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/root_volume"]])

		// Optional. The IDs of additional security groups to add to nodes
		// in this pool. The manager will automatically create security
		// groups with minimum rules needed for a functioning cluster.
		security_group_ids?: [...string]
		ssh_config?: matchN(1, [_#defs."/$defs/config/$defs/ssh_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/ssh_config"]])
		taints?: matchN(1, [_#defs."/$defs/config/$defs/taints", [..._#defs."/$defs/config/$defs/taints"]])

		// Optional. Key/value metadata to assign to each underlying AWS
		// resource. Specify at most 50 pairs containing alphanumerics,
		// spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode
		// characters. Values can be up to 255 Unicode characters.
		tags?: [string]: string
	})

	#kubelet_config: close({
		// Whether or not to enable CPU CFS quota. Defaults to true.
		cpu_cfs_quota?: bool

		// Optional. The CPU CFS quota period to use for the node.
		// Defaults to "100ms".
		cpu_cfs_quota_period?: string

		// The CpuManagerPolicy to use for the node. Defaults to "none".
		cpu_manager_policy?: string

		// Optional. The maximum number of PIDs in each pod running on the
		// node. The limit scales automatically based on underlying
		// machine size if left unset.
		pod_pids_limit?: number
	})

	#management: close({
		// Optional. Whether or not the nodes will be automatically
		// repaired.
		auto_repair?: bool
	})

	#max_pods_constraint: close({
		// The maximum number of pods to schedule on a single node.
		max_pods_per_node!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#update_settings: close({
		surge_settings?: matchN(1, [_#defs."/$defs/update_settings/$defs/surge_settings", list.MaxItems(1) & [..._#defs."/$defs/update_settings/$defs/surge_settings"]])
	})

	_#defs: "/$defs/config/$defs/autoscaling_metrics_collection": close({
		// The frequency at which EC2 Auto Scaling sends aggregated data
		// to AWS CloudWatch. The only valid value is "1Minute".
		granularity!: string

		// The metrics to enable. For a list of valid metrics, see
		// https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html.
		// If you specify granularity and don't specify any metrics, all
		// metrics are enabled.
		metrics?: [...string]
	})

	_#defs: "/$defs/config/$defs/config_encryption": close({
		// The ARN of the AWS KMS key used to encrypt node pool
		// configuration.
		kms_key_arn!: string
	})

	_#defs: "/$defs/config/$defs/proxy_config": close({
		// The ARN of the AWS Secret Manager secret that contains the
		// HTTP(S) proxy configuration.
		secret_arn!: string

		// The version string of the AWS Secret Manager secret that
		// contains the HTTP(S) proxy configuration.
		secret_version!: string
	})

	_#defs: "/$defs/config/$defs/root_volume": close({
		// Optional. The number of I/O operations per second (IOPS) to
		// provision for GP3 volume.
		iops?: number

		// Optional. The Amazon Resource Name (ARN) of the Customer
		// Managed Key (CMK) used to encrypt AWS EBS volumes. If not
		// specified, the default Amazon managed key associated to the
		// AWS region where this cluster runs will be used.
		kms_key_arn?: string

		// Optional. The size of the volume, in GiBs. When unspecified, a
		// default value is provided. See the specific reference in the
		// parent resource.
		size_gib?: number

		// Optional. The throughput to provision for the volume, in MiB/s.
		// Only valid if the volume type is GP3. If volume type is gp3
		// and throughput is not specified, the throughput will defaults
		// to 125.
		throughput?: number

		// Optional. Type of the EBS volume. When unspecified, it defaults
		// to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2,
		// GP3
		volume_type?: string
	})

	_#defs: "/$defs/config/$defs/ssh_config": close({
		// The name of the EC2 key pair used to login into cluster
		// machines.
		ec2_key_pair!: string
	})

	_#defs: "/$defs/config/$defs/taints": close({
		// The taint effect. Possible values: EFFECT_UNSPECIFIED,
		// NO_SCHEDULE, PREFER_NO_SCHEDULE, NO_EXECUTE
		effect!: string

		// Key for the taint.
		key!: string

		// Value for the taint.
		value!: string
	})

	_#defs: "/$defs/update_settings/$defs/surge_settings": close({
		// Optional. The maximum number of nodes that can be created
		// beyond the current size of the node pool during the update
		// process.
		max_surge?: number

		// Optional. The maximum number of nodes that can be
		// simultaneously unavailable during the update process. A node
		// is considered unavailable if its status is not Ready.
		max_unavailable?: number
	})
}
