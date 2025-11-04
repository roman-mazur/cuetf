package res

import "list"

#google_container_aws_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_aws_cluster")
	close({
		// Optional. Annotations on the cluster. This field has the same
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

		// The AWS region where the cluster runs. Each Google Cloud region
		// supports a subset of nearby AWS regions. You can call to list
		// all supported AWS regions within a given Google Cloud region.
		aws_region!: string

		// Output only. The time at which this cluster was created.
		create_time?: string

		// Optional. A human readable description of this cluster. Cannot
		// be longer than 255 UTF-8 encoded bytes.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// Output only. The endpoint of the cluster's API server.
		endpoint?: string

		// Allows clients to perform consistent read-modify-writes through
		// optimistic concurrency control. May be sent on update and
		// delete requests to ensure the client has an up-to-date value
		// before proceeding.
		etag?: string
		id?:   string

		// The location for the resource
		location!: string

		// The name of this resource.
		name!: string

		// The project for the resource
		project?: string
		authorization!: matchN(1, [#authorization, list.MaxItems(1) & [_, ...] & [...#authorization]])
		binary_authorization?: matchN(1, [#binary_authorization, list.MaxItems(1) & [...#binary_authorization]])
		control_plane!: matchN(1, [#control_plane, list.MaxItems(1) & [_, ...] & [...#control_plane]])
		fleet!: matchN(1, [#fleet, list.MaxItems(1) & [_, ...] & [...#fleet]])
		networking!: matchN(1, [#networking, list.MaxItems(1) & [_, ...] & [...#networking]])
		timeouts?: #timeouts

		// Output only. If set, there are currently changes in flight to
		// the cluster.
		reconciling?: bool

		// Output only. The current state of the cluster. Possible values:
		// STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING,
		// STOPPING, ERROR, DEGRADED
		state?: string

		// Output only. A globally unique identifier for the cluster.
		uid?: string

		// Output only. The time at which this cluster was last updated.
		update_time?: string

		// Output only. Workload Identity settings.
		workload_identity_config?: [...close({
			identity_provider?: string
			issuer_uri?:        string
			workload_pool?:     string
		})]
	})

	#authorization: close({
		admin_groups?: matchN(1, [_#defs."/$defs/authorization/$defs/admin_groups", [..._#defs."/$defs/authorization/$defs/admin_groups"]])
		admin_users!: matchN(1, [_#defs."/$defs/authorization/$defs/admin_users", [_, ...] & [..._#defs."/$defs/authorization/$defs/admin_users"]])
	})

	#binary_authorization: close({
		// Mode of operation for Binary Authorization policy evaluation.
		// Possible values: DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE
		evaluation_mode?: string
	})

	#control_plane: close({
		// The name of the AWS IAM instance pofile to assign to each
		// control plane replica.
		iam_instance_profile!: string

		// Optional. The AWS instance type. When unspecified, it defaults
		// to `m5.large`.
		instance_type?: string

		// Optional. The IDs of additional security groups to add to
		// control plane replicas. The Anthos Multi-Cloud API will
		// automatically create and manage security groups with the
		// minimum rules needed for a functioning cluster.
		security_group_ids?: [...string]
		aws_services_authentication!: matchN(1, [_#defs."/$defs/control_plane/$defs/aws_services_authentication", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/control_plane/$defs/aws_services_authentication"]])

		// The list of subnets where control plane replicas will run. A
		// replica will be provisioned on each subnet and up to three
		// values can be provided. Each subnet must be in a different AWS
		// Availability Zone (AZ).
		subnet_ids!: [...string]
		config_encryption!: matchN(1, [_#defs."/$defs/control_plane/$defs/config_encryption", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/control_plane/$defs/config_encryption"]])
		database_encryption!: matchN(1, [_#defs."/$defs/control_plane/$defs/database_encryption", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/control_plane/$defs/database_encryption"]])
		main_volume?: matchN(1, [_#defs."/$defs/control_plane/$defs/main_volume", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/main_volume"]])
		proxy_config?: matchN(1, [_#defs."/$defs/control_plane/$defs/proxy_config", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/proxy_config"]])

		// Optional. A set of AWS resource tags to propagate to all
		// underlying managed AWS resources. Specify at most 50 pairs
		// containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys
		// can be up to 127 Unicode characters. Values can be up to 255
		// Unicode characters.
		tags?: [string]: string
		root_volume?: matchN(1, [_#defs."/$defs/control_plane/$defs/root_volume", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/root_volume"]])
		ssh_config?: matchN(1, [_#defs."/$defs/control_plane/$defs/ssh_config", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/ssh_config"]])

		// The Kubernetes version to run on control plane replicas (e.g.
		// `1.19.10-gke.1000`). You can list all supported versions on a
		// given Google Cloud region by calling .
		version!: string
	})

	#fleet: close({
		// The name of the managed Hub Membership resource associated to
		// this cluster. Membership names are formatted as
		// projects/<project-number>/locations/global/membership/<cluster-id>.
		membership?: string

		// The number of the Fleet host project where this cluster will be
		// registered.
		project?: string
	})

	#networking: close({
		// Disable the per node pool subnet security group rules on the
		// control plane security group. When set to true, you must also
		// provide one or more security groups that ensure node pools are
		// able to send requests to the control plane on TCP/443 and
		// TCP/8132. Failure to do so may result in unavailable node
		// pools.
		per_node_pool_sg_rules_disabled?: bool

		// All pods in the cluster are assigned an RFC1918 IPv4 address
		// from these ranges. Only a single range is supported. This
		// field cannot be changed after creation.
		pod_address_cidr_blocks!: [...string]

		// All services in the cluster are assigned an RFC1918 IPv4
		// address from these ranges. Only a single range is supported.
		// This field cannot be changed after creation.
		service_address_cidr_blocks!: [...string]

		// The VPC associated with the cluster. All component clusters
		// (i.e. control plane and node pools) run on a single VPC. This
		// field cannot be changed after creation.
		vpc_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/authorization/$defs/admin_groups": close({
		// The name of the group, e.g. `my-group@domain.com`.
		group!: string
	})

	_#defs: "/$defs/authorization/$defs/admin_users": close({
		// The name of the user, e.g. `my-gcp-id@gmail.com`.
		username!: string
	})

	_#defs: "/$defs/control_plane/$defs/aws_services_authentication": close({
		// The Amazon Resource Name (ARN) of the role that the Anthos
		// Multi-Cloud API will assume when managing AWS resources on
		// your account.
		role_arn!: string

		// Optional. An identifier for the assumed role session. When
		// unspecified, it defaults to `multicloud-service-agent`.
		role_session_name?: string
	})

	_#defs: "/$defs/control_plane/$defs/config_encryption": close({
		// The ARN of the AWS KMS key used to encrypt cluster
		// configuration.
		kms_key_arn!: string
	})

	_#defs: "/$defs/control_plane/$defs/database_encryption": close({
		// The ARN of the AWS KMS key used to encrypt cluster secrets.
		kms_key_arn!: string
	})

	_#defs: "/$defs/control_plane/$defs/main_volume": close({
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

	_#defs: "/$defs/control_plane/$defs/proxy_config": close({
		// The ARN of the AWS Secret Manager secret that contains the
		// HTTP(S) proxy configuration.
		secret_arn!: string

		// The version string of the AWS Secret Manager secret that
		// contains the HTTP(S) proxy configuration.
		secret_version!: string
	})

	_#defs: "/$defs/control_plane/$defs/root_volume": close({
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

	_#defs: "/$defs/control_plane/$defs/ssh_config": close({
		// The name of the EC2 key pair used to login into cluster
		// machines.
		ec2_key_pair!: string
	})
}
