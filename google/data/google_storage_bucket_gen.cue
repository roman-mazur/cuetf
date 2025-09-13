package data

#google_storage_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_bucket")
	close({
		// The bucket's autoclass configuration.
		autoclass?: [...close({
			enabled?:                bool
			terminal_storage_class?: string
		})]

		// The bucket's Cross-Origin Resource Sharing (CORS)
		// configuration.
		cors?: [...close({
			max_age_seconds?: number
			method?: [...string]
			origin?: [...string]
			response_header?: [...string]
		})]

		// The bucket's custom location configuration, which specifies the
		// individual regions that comprise a dual-region bucket. If the
		// bucket is designated a single or multi-region, the parameters
		// are empty.
		custom_placement_config?: [...close({
			data_locations?: [...string]
		})]

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

		// The bucket's encryption configuration.
		encryption?: [...close({
			default_kms_key_name?: string
		})]

		// When deleting a bucket, this boolean option will delete all
		// contained objects, or anywhereCaches (if any). If you try to
		// delete a bucket that contains objects or anywhereCaches,
		// Terraform will fail that run, deleting anywhereCaches may take
		// 80 minutes to complete.
		force_destroy?: bool

		// The bucket's HNS configuration, which defines bucket can
		// organize folders in logical file system structure.
		hierarchical_namespace?: [...close({
			enabled?: bool
		})]

		// The bucket IP filtering configuration.
		ip_filter?: [...close({
			allow_all_service_agent_access?: bool
			allow_cross_org_vpcs?:           bool
			mode?:                           string
			public_network_source?: [...close({
				allowed_ip_cidr_ranges?: [...string]
			})]
			vpc_network_sources?: [...close({
				allowed_ip_cidr_ranges?: [...string]
				network?: string
			})]
		})]

		// A set of key/value label pairs to assign to the bucket.
		labels?: [string]: string

		// The bucket's Lifecycle Rules configuration.
		lifecycle_rule?: [...close({
			action?: [...close({
				storage_class?: string
				type?:          string
			})]
			condition?: [...close({
				age?:                        number
				created_before?:             string
				custom_time_before?:         string
				days_since_custom_time?:     number
				days_since_noncurrent_time?: number
				matches_prefix?: [...string]
				matches_storage_class?: [...string]
				matches_suffix?: [...string]
				noncurrent_time_before?:                  string
				num_newer_versions?:                      number
				send_age_if_zero?:                        bool
				send_days_since_custom_time_if_zero?:     bool
				send_days_since_noncurrent_time_if_zero?: bool
				send_num_newer_versions_if_zero?:         bool
				with_state?:                              string
			})]
		})]

		// The Google Cloud Storage location or region.
		location?: string

		// The bucket's Access & Storage Logs configuration.
		logging?: [...close({
			log_bucket?:        string
			log_object_prefix?: string
		})]
		id?: string

		// The name of the bucket.
		name!: string

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

		// Configuration of the bucket's data retention policy for how
		// long objects in the bucket should be retained.
		retention_policy?: [...close({
			is_locked?:        bool
			retention_period?: string
		})]

		// Specifies the RPO setting of bucket. If set 'ASYNC_TURBO', The
		// Turbo Replication will be enabled for the dual-region bucket.
		// Value 'DEFAULT' will set RPO setting to default. Turbo
		// Replication is only for buckets in dual-regions.See the docs
		// for more details.
		rpo?: string

		// The URI of the created resource.
		self_link?: string

		// The bucket's soft delete policy, which defines the period of
		// time that soft-deleted objects will be retained, and cannot be
		// permanently deleted. If it is not provided, by default Google
		// Cloud Storage sets this to default soft delete policy
		soft_delete_policy?: [...close({
			effective_time?:             string
			retention_duration_seconds?: number
		})]

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

		// The bucket's Versioning configuration.
		versioning?: [...close({
			enabled?: bool
		})]

		// Configuration if the bucket acts as a website.
		website?: [...close({
			main_page_suffix?: string
			not_found_page?:   string
		})]
	})
}
