package data

#google_compute_region_instance_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_region_instance_template")
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

		// Whether to allow sending and receiving of packets with
		// non-matching source or destination IPs. This defaults to
		// false.
		can_ip_forward?: bool

		// The Confidential VM config being used by the instance.
		// on_host_maintenance has to be set to TERMINATE or this will
		// fail to create.
		confidential_instance_config?: [...close({
			confidential_instance_type?:  string
			enable_confidential_compute?: bool
		})]

		// The time at which the instance was created in RFC 3339 format.
		creation_timestamp?: string

		// A brief description of this resource.
		description?: string

		// Disks to attach to instances created from this template. This
		// can be specified multiple times for multiple disks.
		disk?: [...close({
			architecture?: string
			auto_delete?:  bool
			boot?:         bool
			device_name?:  string
			disk_encryption_key?: [...close({
				kms_key_self_link?:       string
				kms_key_service_account?: string
			})]
			disk_name?:    string
			disk_size_gb?: number
			disk_type?:    string
			guest_os_features?: [...string]
			interface?: string
			labels?: [string]: string
			mode?:                   string
			provisioned_iops?:       number
			provisioned_throughput?: number
			resource_manager_tags?: [string]: string
			resource_policies?: [...string]
			source?:       string
			source_image?: string
			source_image_encryption_key?: [...close({
				kms_key_self_link?:       string
				kms_key_service_account?: string
				raw_key?:                 string
				rsa_encrypted_key?:       string
			})]
			source_snapshot?: string
			source_snapshot_encryption_key?: [...close({
				kms_key_self_link?:       string
				kms_key_service_account?: string
				raw_key?:                 string
				rsa_encrypted_key?:       string
			})]
			type?: string
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// List of the type and count of accelerator cards attached to the
		// instance.
		guest_accelerator?: [...close({
			count?: number
			type?:  string
		})]
		filter?: string

		// A description of the instance.
		instance_description?: string

		// Action to be taken when a customer's encryption key is revoked.
		// Supports "STOP" and "NONE", with "NONE" being the default.
		key_revocation_action_type?: string
		id?:                         string

		// A set of key/value label pairs to assign to instances created
		// from this template,
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The machine type to create. To create a machine with a custom
		// type (such as extended memory), format the value like
		// custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB
		// of RAM.
		machine_type?: string

		// Metadata key/value pairs to make available from within
		// instances created from this template.
		metadata?: [string]: string

		// The unique fingerprint of the metadata.
		metadata_fingerprint?: string

		// An alternative to using the startup-script metadata key, mostly
		// to match the compute_instance resource. This replaces the
		// startup-script metadata key on the created instance and thus
		// the two mechanisms are not allowed to be used simultaneously.
		metadata_startup_script?: string

		// Specifies a minimum CPU platform. Applicable values are the
		// friendly names of CPU platforms, such as Intel Haswell or
		// Intel Skylake.
		min_cpu_platform?: string
		most_recent?:      bool

		// The name of the instance template. If you leave this blank,
		// Terraform will auto-generate a unique name.
		name?: string

		// Creates a unique name beginning with the specified prefix.
		// Conflicts with name.
		name_prefix?: string

		// Networks to attach to instances created from this template.
		// This can be specified multiple times for multiple networks.
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

		// The ID of the template in numeric format.
		numeric_id?: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The region in which the instance template is located. If it is
		// not provided, the provider region is used.
		region?: string

		// Specifies the reservations that this instance can consume from.
		reservation_affinity?: [...close({
			specific_reservation?: [...close({
				key?: string
				values?: [...string]
			})]
			type?: string
		})]

		// A map of resource manager tags.
		// Resource manager tag keys and values have the same definition
		// as resource manager tags. Keys must be in the format
		// tagKeys/{tag_key_id}, and values are in the format
		// tagValues/456. The field is ignored (both PUT & PATCH) when
		// empty.
		resource_manager_tags?: [string]: string

		// A list of self_links of resource policies to attach to the
		// instance. Currently a max of 1 resource policy is supported.
		resource_policies?: [...string]

		// The scheduling strategy to use.
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

		// The URI of the created resource.
		self_link?: string

		// Service account to attach to the instance.
		service_account?: [...close({
			email?: string
			scopes?: [...string]
		})]

		// Enable Shielded VM on this instance. Shielded VM provides
		// verifiable integrity to prevent against malware and rootkits.
		// Defaults to disabled. Note: shielded_instance_config can only
		// be used with boot images with shielded vm support.
		shielded_instance_config?: [...close({
			enable_integrity_monitoring?: bool
			enable_secure_boot?:          bool
			enable_vtpm?:                 bool
		})]

		// Tags to attach to the instance.
		tags?: [...string]

		// The unique fingerprint of the tags.
		tags_fingerprint?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
