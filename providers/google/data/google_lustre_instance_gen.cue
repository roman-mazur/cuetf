package data

#google_lustre_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_lustre_instance")
	close({
		// IP-based access rules for the Managed Lustre instance. These
		// options
		// define the root user squash configuration.
		access_rules_options?: [...close({
			access_rules?: [...close({
				ip_address_ranges?: [...string]
				name?:        string
				squash_mode?: string
			})]
			default_squash_gid?:  number
			default_squash_mode?: string
			default_squash_uid?:  number
		})]

		// The storage capacity of the instance in gibibytes (GiB).
		// Allowed values
		// are from '9000' to '7632000', depending on the
		// 'perUnitStorageThroughput'.
		// See [Performance tiers and maximum storage
		// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
		// for specific minimums, maximums, and step sizes for each
		// performance tier.
		capacity_gib?: string

		// Timestamp when the instance was created.
		create_time?: string

		// A user-readable description of the instance.
		description?: string

		// Dynamic tier options for a Managed Lustre instance.
		dynamic_tier_options?: [...close({
			mode?: string
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The filesystem name for this instance. This name is used by
		// client-side
		// tools, including when mounting the instance. Must be eight
		// characters or
		// less and can only contain letters and numbers.
		filesystem?: string

		// Indicates whether you want to enable support for GKE clients.
		// By default,
		// GKE clients are not supported.
		gke_support_enabled?: bool
		id?:                  string

		// The name of the Managed Lustre instance.
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		instance_id!: string

		// The Cloud KMS key name to use for data encryption.
		// If not set, the instance will use Google-managed encryption
		// keys.
		// If set, the instance will use customer-managed encryption keys.
		// The key must be in the same region as the instance.
		// The key format is:
		// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}
		kms_key?: string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location?: string

		// Defines a maintenance policy for a resource.
		maintenance_policy?: [...close({
			maintenance_exclusion_window?: [...close({
				end_date?: [...close({
					day?:   number
					month?: number
					year?:  number
				})]
				start_date?: [...close({
					day?:   number
					month?: number
					year?:  number
				})]
				time?: [...close({
					hours?:   number
					minutes?: number
					nanos?:   number
					seconds?: number
				})]
			})]
			weekly_maintenance_windows?: [...close({
				day_of_week?: string
				start_time?: [...close({
					hours?:   number
					minutes?: number
					nanos?:   number
					seconds?: number
				})]
			})]
		})]

		// Mount point of the instance in the format
		// 'IP_ADDRESS@tcp:/FILESYSTEM'.
		mount_point?: string

		// Identifier. The name of the instance.
		name?: string

		// The full name of the VPC network to which the instance is
		// connected.
		// Must be in the format
		// 'projects/{project_id}/global/networks/{network_name}'.
		network?: string

		// The throughput of the instance in MBps per TiB. Valid values
		// are 125, 250,
		// 500, 1000.
		// See [Performance tiers and maximum storage
		// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
		// for more information.
		//
		// If the instance is using the Dynamic tier, this field must not
		// be set or
		// must be set to zero.
		per_unit_storage_throughput?: string

		// The placement policy name for the instance in the format of
		// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
		placement_policy?: string
		project?:          string

		// The state of the instance.
		// Possible values:
		// ACTIVE
		// CREATING
		// DELETING
		// UPGRADING
		// REPAIRING
		// STOPPED
		// UPDATING
		// SUSPENDED
		state?: string

		// The reason why the instance is in a certain state (e.g.
		// SUSPENDED).
		state_reason?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Unique ID of the resource.
		// This is unrelated to the access rules which allow specifying
		// the root
		// squash uid.
		uid?: string

		// Represents a scheduled maintenance event.
		upcoming_maintenance_schedule?: [...close({
			end_time?:   string
			start_time?: string
		})]

		// Timestamp when the instance was last updated.
		update_time?: string

		// Zone of Lustre instance
		zone?: string
	})
}
