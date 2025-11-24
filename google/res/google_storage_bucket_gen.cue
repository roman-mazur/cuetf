package res

import "list"

#google_storage_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_bucket")
	close({
		// Whether or not to automatically apply an eventBasedHold to new
		// objects added to the bucket.
		default_event_based_hold?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Enables each object in the bucket to have its own retention
		// policy, which prevents deletion until stored for a specific
		// length of time.
		enable_object_retention?: bool

		// When deleting a bucket, this boolean option will delete all
		// contained objects, or anywhereCaches (if any). If you try to
		// delete a bucket that contains objects or anywhereCaches,
		// Terraform will fail that run, deleting anywhereCaches may take
		// 80 minutes to complete.
		force_destroy?: bool

		// A set of key/value label pairs to assign to the bucket.
		labels?: [string]: string

		// The Google Cloud Storage location or region.
		location!: string

		// The name of the bucket.
		name!: string
		id?:   string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The project number of the project in which the resource
		// belongs.
		project_number?: number

		// Prevents public access to a bucket.
		public_access_prevention?: string

		// Enables Requester Pays on a storage bucket.
		requester_pays?: bool
		autoclass?: matchN(1, [#autoclass, list.MaxItems(1) & [...#autoclass]])
		cors?: matchN(1, [#cors, [...#cors]])
		custom_placement_config?: matchN(1, [#custom_placement_config, list.MaxItems(1) & [...#custom_placement_config]])
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])

		// Specifies the RPO setting of bucket. If set 'ASYNC_TURBO', The
		// Turbo Replication will be enabled for the dual-region bucket.
		// Value 'DEFAULT' will set RPO setting to default. Turbo
		// Replication is only for buckets in dual-regions.See the docs
		// for more details.
		rpo?: string
		hierarchical_namespace?: matchN(1, [#hierarchical_namespace, list.MaxItems(1) & [...#hierarchical_namespace]])
		ip_filter?: matchN(1, [#ip_filter, list.MaxItems(1) & [...#ip_filter]])
		lifecycle_rule?: matchN(1, [#lifecycle_rule, list.MaxItems(100) & [...#lifecycle_rule]])
		logging?: matchN(1, [#logging, list.MaxItems(1) & [...#logging]])
		retention_policy?: matchN(1, [#retention_policy, list.MaxItems(1) & [...#retention_policy]])
		soft_delete_policy?: matchN(1, [#soft_delete_policy, list.MaxItems(1) & [...#soft_delete_policy]])
		timeouts?: #timeouts
		versioning?: matchN(1, [#versioning, list.MaxItems(1) & [...#versioning]])

		// The URI of the created resource.
		self_link?: string
		website?: matchN(1, [#website, list.MaxItems(1) & [...#website]])

		// The Storage Class of the new bucket. Supported values include:
		// STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE,
		// ARCHIVE.
		storage_class?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The creation time of the bucket in RFC 3339 format.
		time_created?: string

		// Enables uniform bucket-level access on a bucket.
		uniform_bucket_level_access?: bool

		// The time at which the bucket's metadata or IAM policy was last
		// updated, in RFC 3339 format.
		updated?: string

		// The base URL of the bucket, in the format gs://<bucket-name>.
		url?: string
	})

	#autoclass: close({
		// While set to true, autoclass automatically transitions objects
		// in your bucket to appropriate storage classes based on each
		// object's access pattern.
		enabled!: bool

		// The storage class that objects in the bucket eventually
		// transition to if they are not read for a certain length of
		// time. Supported values include: NEARLINE, ARCHIVE.
		terminal_storage_class?: string
	})

	#cors: close({
		// The value, in seconds, to return in the Access-Control-Max-Age
		// header used in preflight responses.
		max_age_seconds?: number

		// The list of HTTP methods on which to include CORS response
		// headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in
		// the list of methods, and means "any method".
		method?: [...string]

		// The list of Origins eligible to receive CORS response headers.
		// Note: "*" is permitted in the list of origins, and means "any
		// Origin".
		origin?: [...string]

		// The list of HTTP headers other than the simple response headers
		// to give permission for the user-agent to share across domains.
		response_header?: [...string]
	})

	#custom_placement_config: close({
		// The list of individual regions that comprise a dual-region
		// bucket. See the docs for a list of acceptable regions. Note:
		// If any of the data_locations changes, it will recreate the
		// bucket.
		data_locations!: [...string]
	})

	#encryption: close({
		// A Cloud KMS key that will be used to encrypt objects inserted
		// into this bucket, if no encryption method is specified. You
		// must pay attention to whether the crypto key is available in
		// the location that this bucket is created in. See the docs for
		// more details.
		default_kms_key_name!: string
	})

	#hierarchical_namespace: close({
		// Set this field true to organize bucket with logical file system
		// structure.
		enabled!: bool
	})

	#ip_filter: close({
		// Whether to allow all service agents to access the bucket
		// regardless of the IP filter configuration.
		allow_all_service_agent_access?: bool

		// Whether to allow cross-org VPCs in the bucket's IP filter
		// configuration.
		allow_cross_org_vpcs?: bool
		public_network_source?: matchN(1, [_#defs."/$defs/ip_filter/$defs/public_network_source", list.MaxItems(1) & [..._#defs."/$defs/ip_filter/$defs/public_network_source"]])

		// The mode of the IP filter. Valid values are 'Enabled' and
		// 'Disabled'.
		mode!: string
		vpc_network_sources?: matchN(1, [_#defs."/$defs/ip_filter/$defs/vpc_network_sources", [..._#defs."/$defs/ip_filter/$defs/vpc_network_sources"]])
	})

	#lifecycle_rule: close({
		action!: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/lifecycle_rule/$defs/action"]])
		condition!: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/condition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/lifecycle_rule/$defs/condition"]])
	})

	#logging: close({
		// The bucket that will receive log objects.
		log_bucket!: string

		// The object prefix for log objects. If it's not provided, by
		// default Google Cloud Storage sets this to this bucket's name.
		log_object_prefix?: string
	})

	#retention_policy: close({
		// If set to true, the bucket will be locked and permanently
		// restrict edits to the bucket's retention policy. Caution:
		// Locking a bucket is an irreversible action.
		is_locked?: bool

		// The period of time, in seconds, that objects in the bucket must
		// be retained and cannot be deleted, overwritten, or archived.
		// The value must be less than 3,155,760,000 seconds.
		retention_period!: string
	})

	#soft_delete_policy: close({
		// Server-determined value that indicates the time from which the
		// policy, or one with a greater retention, was effective. This
		// value is in RFC 3339 format.
		effective_time?: string

		// The duration in seconds that soft-deleted objects in the bucket
		// will be retained and cannot be permanently deleted. Default
		// value is 604800.
		retention_duration_seconds?: number
	})

	#timeouts: close({
		create?: string
		read?:   string
		update?: string
	})

	#versioning: close({
		// While set to true, versioning is fully enabled for this bucket.
		enabled!: bool
	})

	#website: close({
		// Behaves as the bucket's directory index where missing objects
		// are treated as potential directories.
		main_page_suffix?: string

		// The custom object to return when a requested resource is not
		// found.
		not_found_page?: string
	})

	_#defs: "/$defs/ip_filter/$defs/public_network_source": close({
		// The list of public IPv4, IPv6 cidr ranges that are allowed to
		// access the bucket.
		allowed_ip_cidr_ranges!: [...string]
	})

	_#defs: "/$defs/ip_filter/$defs/vpc_network_sources": close({
		// The list of public or private IPv4 and IPv6 CIDR ranges that
		// can access the bucket.
		allowed_ip_cidr_ranges!: [...string]

		// Name of the network. Format:
		// projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}
		network!: string
	})

	_#defs: "/$defs/lifecycle_rule/$defs/action": close({
		// The target Storage Class of objects affected by this Lifecycle
		// Rule. Supported values include: MULTI_REGIONAL, REGIONAL,
		// NEARLINE, COLDLINE, ARCHIVE.
		storage_class?: string

		// The type of the action of this Lifecycle Rule. Supported values
		// include: Delete, SetStorageClass and
		// AbortIncompleteMultipartUpload.
		type!: string
	})

	_#defs: "/$defs/lifecycle_rule/$defs/condition": close({
		// Minimum age of an object in days to satisfy this condition.
		age?: number

		// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to
		// satisfy this condition.
		created_before?: string

		// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to
		// satisfy this condition.
		custom_time_before?: string

		// Number of days elapsed since the user-specified timestamp set
		// on an object.
		days_since_custom_time?: number

		// Number of days elapsed since the noncurrent timestamp of an
		// object. This
		// condition is relevant only for versioned objects.
		days_since_noncurrent_time?: number

		// One or more matching name prefixes to satisfy this condition.
		matches_prefix?: [...string]

		// Storage Class of objects to satisfy this condition. Supported
		// values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE,
		// ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY.
		matches_storage_class?: [...string]

		// One or more matching name suffixes to satisfy this condition.
		matches_suffix?: [...string]

		// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to
		// satisfy this condition.
		noncurrent_time_before?: string

		// Relevant only for versioned objects. The number of newer
		// versions of an object to satisfy this condition.
		num_newer_versions?: number

		// While set true, age value will be sent in the request even for
		// zero value of the field. This field is only useful for setting
		// 0 value to the age field. It can be used alone or together
		// with age.
		send_age_if_zero?: bool

		// While set true, days_since_custom_time value will be sent in
		// the request even for zero value of the field. This field is
		// only useful for setting 0 value to the days_since_custom_time
		// field. It can be used alone or together with
		// days_since_custom_time.
		send_days_since_custom_time_if_zero?: bool

		// While set true, days_since_noncurrent_time value will be sent
		// in the request even for zero value of the field. This field is
		// only useful for setting 0 value to the
		// days_since_noncurrent_time field. It can be used alone or
		// together with days_since_noncurrent_time.
		send_days_since_noncurrent_time_if_zero?: bool

		// While set true, num_newer_versions value will be sent in the
		// request even for zero value of the field. This field is only
		// useful for setting 0 value to the num_newer_versions field. It
		// can be used alone or together with num_newer_versions.
		send_num_newer_versions_if_zero?: bool

		// Match to live and/or archived objects. Unversioned buckets have
		// only live objects. Supported values include: "LIVE",
		// "ARCHIVED", "ANY".
		with_state?: string
	})
}
