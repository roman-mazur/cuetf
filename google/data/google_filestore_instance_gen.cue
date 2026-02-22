package data

#google_filestore_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_filestore_instance")
	close({
		// Creation timestamp in RFC3339 text format.
		create_time?: string

		// Indicates whether the instance is protected against deletion.
		deletion_protection_enabled?: bool

		// The reason for enabling deletion protection.
		deletion_protection_reason?: string

		// A description of the instance.
		description?: string

		// The desired_replica_state field controls the state of a
		// replica. Terraform will attempt to make the actual state of
		// the replica match the desired state. Default value: "READY"
		// Possible values: ["PAUSED", "READY"]
		desired_replica_state?: string

		// Directory Services configuration.
		// Should only be set if protocol is "NFS_V4_1".
		directory_services?: [...close({
			ldap?: [...close({
				domain?:    string
				groups_ou?: string
				servers?: [...string]
				users_ou?: string
			})]
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Output only fields for replication configuration.
		effective_replication?: [...close({
			replicas?: [...close({
				last_active_sync_time?: string
				peer_instance?:         string
				state?:                 string
				state_reasons?: [...string]
			})]
			role?: string
		})]

		// Server-specified ETag for the instance resource to prevent
		// simultaneous updates from overwriting each other.
		etag?: string

		// File system shares on the instance. For this version, only a
		// single file share is supported.
		file_shares?: [...close({
			capacity_gb?: number
			name?:        string
			nfs_export_options?: [...close({
				access_mode?: string
				anon_gid?:    number
				anon_uid?:    number
				ip_ranges?: [...string]
				network?:     string
				squash_mode?: string
			})]
			source_backup?: string
		})]
		id?: string

		// Replication configuration, once set, this cannot be updated.
		// Additionally this should be specified on the replica instance
		// only, indicating the active as the peer_instance
		initial_replication?: [...close({
			replicas?: [...close({
				peer_instance?: string
			})]
			role?: string
		})]

		// KMS key name used for data encryption.
		kms_key_name?: string

		// Resource labels to represent user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the location of the instance. This can be a region
		// for ENTERPRISE tier instances.
		location?: string

		// The resource name of the instance.
		name!: string

		// VPC networks to which the instance is connected. For this
		// version,
		// only a single network is supported.
		networks?: [...close({
			connect_mode?: string
			ip_addresses?: [...string]
			modes?: [...string]
			network?: string
			psc_config?: [...close({
				endpoint_project?: string
			})]
			reserved_ip_range?: string
		})]

		// Performance configuration for the instance. If not provided,
		// the default performance settings will be used.
		performance_config?: [...close({
			fixed_iops?: [...close({
				max_iops?: number
			})]
			iops_per_tb?: [...close({
				max_iops_per_tb?: number
			})]
		})]
		project?: string

		// Either NFSv3, for using NFS version 3 as file sharing protocol,
		// or NFSv4.1, for using NFS version 4.1 as file sharing protocol.
		// NFSv4.1 can be used with HIGH_SCALE_SSD, ZONAL, REGIONAL and
		// ENTERPRISE.
		// The default is NFSv3. Default value: "NFS_V3" Possible values:
		// ["NFS_V3", "NFS_V4_1"]
		protocol?: string

		// A map of resource manager tags. Resource manager tag keys
		// and values have the same definition as resource manager
		// tags. Keys must be in the format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456. The field is
		// ignored when empty. The field is immutable and causes
		// resource replacement when mutated. This field is only set
		// at create time and modifying this field after creation
		// will trigger recreation. To apply tags to an existing
		// resource, see the 'google_tags_tag_value' resource.
		tags?: [string]: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The service tier of the instance.
		// Possible values include: STANDARD, PREMIUM, BASIC_HDD,
		// BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
		tier?: string

		// The name of the Filestore zone of the instance.
		zone?: string
	})
}
