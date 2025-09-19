package data

#google_compute_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_instance")
	close({
		// Controls for advanced machine-related behavior features.
		advanced_machine_features?: [...close({
			enable_nested_virtualization?: bool
			enable_uefi_networking?:       bool
			performance_monitoring_unit?:  string
			threads_per_core?:             number
			turbo_mode?:                   string
			visible_core_count?:           number
		})]

		// If true, allows Terraform to stop the instance to update its
		// properties. If you try to update a property that requires
		// stopping the instance without setting this field, the update
		// will fail.
		allow_stopping_for_update?: bool

		// List of disks attached to the instance
		attached_disk?: [...close({
			device_name?:                     string
			disk_encryption_key_raw?:         string
			disk_encryption_key_rsa?:         string
			disk_encryption_key_sha256?:      string
			disk_encryption_service_account?: string
			force_attach?:                    bool
			kms_key_self_link?:               string
			mode?:                            string
			source?:                          string
		})]

		// The boot disk for the instance.
		boot_disk?: [...close({
			auto_delete?:                     bool
			device_name?:                     string
			disk_encryption_key_raw?:         string
			disk_encryption_key_rsa?:         string
			disk_encryption_key_sha256?:      string
			disk_encryption_service_account?: string
			force_attach?:                    bool
			guest_os_features?: [...string]
			initialize_params?: [...close({
				architecture?:                string
				enable_confidential_compute?: bool
				image?:                       string
				labels?: [string]: string
				provisioned_iops?:       number
				provisioned_throughput?: number
				resource_manager_tags?: [string]: string
				resource_policies?: [...string]
				size?:     number
				snapshot?: string
				source_image_encryption_key?: [...close({
					kms_key_self_link?:       string
					kms_key_service_account?: string
					raw_key?:                 string
					rsa_encrypted_key?:       string
					sha256?:                  string
				})]
				source_snapshot_encryption_key?: [...close({
					kms_key_self_link?:       string
					kms_key_service_account?: string
					raw_key?:                 string
					rsa_encrypted_key?:       string
					sha256?:                  string
				})]
				storage_pool?: string
				type?:         string
			})]
			interface?:         string
			kms_key_self_link?: string
			mode?:              string
			source?:            string
		})]

		// Whether sending and receiving of packets with non-matching
		// source or destination IPs is allowed.
		can_ip_forward?: bool

		// The Confidential VM config being used by the instance.
		// on_host_maintenance has to be set to TERMINATE or this will
		// fail to create.
		confidential_instance_config?: [...close({
			confidential_instance_type?:  string
			enable_confidential_compute?: bool
		})]

		// The CPU platform used by this instance.
		cpu_platform?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Current status of the instance.
		// This could be one of the following values: PROVISIONING,
		// STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING,
		// and TERMINATED.
		// For more information about the status of the instance, see
		// [Instance life
		// cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
		current_status?: string

		// Whether deletion protection is enabled on this instance.
		deletion_protection?: bool

		// A brief description of the resource.
		description?: string

		// Desired status of the instance. Either "RUNNING", "SUSPENDED"
		// or "TERMINATED".
		desired_status?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether the instance has virtual displays enabled.
		enable_display?: bool

		// List of the type and count of accelerator cards attached to the
		// instance.
		guest_accelerator?: [...close({
			count?: number
			type?:  string
		})]

		// A custom hostname for the instance. Must be a fully qualified
		// DNS name and RFC-1035-valid. Valid format is a series of
		// labels 1-63 characters long matching the regular expression
		// [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The
		// entire hostname must not exceed 253 characters. Changing this
		// forces a new resource to be created.
		hostname?: string
		id?:       string

		// Encryption key used to provide data encryption on the given
		// instance.
		instance_encryption_key?: [...close({
			kms_key_self_link?:       string
			kms_key_service_account?: string
			sha256?:                  string
		})]

		// The server-assigned unique identifier of this instance.
		instance_id?: string

		// Action to be taken when a customer's encryption key is revoked.
		// Supports "STOP" and "NONE", with "NONE" being the default.
		key_revocation_action_type?: string

		// The unique fingerprint of the labels.
		label_fingerprint?: string

		// A set of key/value label pairs assigned to the instance.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The machine type to create.
		machine_type?: string

		// Metadata key/value pairs made available within the instance.
		metadata?: [string]: string

		// The unique fingerprint of the metadata.
		metadata_fingerprint?: string

		// Metadata startup scripts made available within the instance.
		metadata_startup_script?: string

		// The minimum CPU platform specified for the VM instance.
		min_cpu_platform?: string

		// The name of the instance. One of name or self_link must be
		// provided.
		name?: string

		// The networks attached to the instance.
		network_interface?: [...close({
			access_config?: [...close({
				nat_ip?:                 string
				network_tier?:           string
				public_ptr_domain_name?: string
			})]
			alias_ip_range?: [...close({
				ip_cidr_range?:         string
				subnetwork_range_name?: string
			})]
			internal_ipv6_prefix_length?: number
			ipv6_access_config?: [...close({
				external_ipv6?:               string
				external_ipv6_prefix_length?: string
				name?:                        string
				network_tier?:                string
				public_ptr_domain_name?:      string
			})]
			ipv6_access_type?:   string
			ipv6_address?:       string
			name?:               string
			network?:            string
			network_attachment?: string
			network_ip?:         string
			nic_type?:           string
			queue_count?:        number
			stack_type?:         string
			subnetwork?:         string
			subnetwork_project?: string
		})]

		// Configures network performance settings for the instance. If
		// not specified, the instance will be created with its default
		// network performance configuration.
		network_performance_config?: [...close({
			total_egress_bandwidth_tier?: string
		})]

		// Stores additional params passed with the request, but not
		// persisted as part of resource payload.
		params?: [...close({
			resource_manager_tags?: [string]: string
		})]

		// The ID of the project in which the resource belongs. If
		// self_link is provided, this value is ignored. If neither
		// self_link nor project are provided, the provider project is
		// used.
		project?: string

		// Specifies the reservations that this instance can consume from.
		reservation_affinity?: [...close({
			specific_reservation?: [...close({
				key?: string
				values?: [...string]
			})]
			type?: string
		})]

		// A list of self_links of resource policies to attach to the
		// instance. Currently a max of 1 resource policy is supported.
		resource_policies?: [...string]

		// The scheduling strategy being used by the instance.
		scheduling?: [...close({
			automatic_restart?:           bool
			availability_domain?:         number
			instance_termination_action?: string
			local_ssd_recovery_timeout?: [...close({
				nanos?:   number
				seconds?: number
			})]
			max_run_duration?: [...close({
				nanos?:   number
				seconds?: number
			})]
			min_node_cpus?: number
			node_affinities?: [...close({
				key?:      string
				operator?: string
				values?: [...string]
			})]
			on_host_maintenance?: string
			on_instance_stop_action?: [...close({
				discard_local_ssd?: bool
			})]
			preemptible?:        bool
			provisioning_model?: string
			termination_time?:   string
		})]

		// The scratch disks attached to the instance.
		scratch_disk?: [...close({
			device_name?: string
			interface?:   string
			size?:        number
		})]

		// The URI of the created resource.
		self_link?: string

		// The service account to attach to the instance.
		service_account?: [...close({
			email?: string
			scopes?: [...string]
		})]

		// The shielded vm config being used by the instance.
		shielded_instance_config?: [...close({
			enable_integrity_monitoring?: bool
			enable_secure_boot?:          bool
			enable_vtpm?:                 bool
		})]

		// The list of tags attached to the instance.
		tags?: [...string]

		// The unique fingerprint of the tags.
		tags_fingerprint?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The zone of the instance. If self_link is provided, this value
		// is ignored. If neither self_link nor zone are provided, the
		// provider zone is used.
		zone?: string
	})
}
