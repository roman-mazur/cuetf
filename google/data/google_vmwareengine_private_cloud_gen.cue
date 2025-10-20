package data

#google_vmwareengine_private_cloud: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vmwareengine_private_cloud")
	close({
		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Time when the resource was scheduled for deletion.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		delete_time?: string

		// The number of hours to delay this request. You can set this
		// value to an hour between 0 to 8, where setting it to 0 starts
		// the deletion request immediately. If no value is set, a
		// default value is set at the API Level.
		deletion_delay_hours?: number

		// User-provided description for this private cloud.
		description?: string

		// Time when the resource will be irreversibly deleted.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		expire_time?: string

		// Details about a HCX Cloud Manager appliance.
		hcx?: [...close({
			fqdn?:        string
			internal_ip?: string
			state?:       string
			version?:     string
		})]
		id?: string

		// The location where the PrivateCloud should reside.
		location!: string

		// The management cluster for this private cloud. This used for
		// creating and managing the default cluster.
		management_cluster?: [...close({
			autoscaling_settings?: [...close({
				autoscaling_policies?: [...close({
					autoscale_policy_id?: string
					consumed_memory_thresholds?: [...close({
						scale_in?:  number
						scale_out?: number
					})]
					cpu_thresholds?: [...close({
						scale_in?:  number
						scale_out?: number
					})]
					node_type_id?:   string
					scale_out_size?: number
					storage_thresholds?: [...close({
						scale_in?:  number
						scale_out?: number
					})]
				})]
				cool_down_period?:       string
				max_cluster_node_count?: number
				min_cluster_node_count?: number
			})]
			cluster_id?: string
			node_type_configs?: [...close({
				custom_core_count?: number
				node_count?:        number
				node_type_id?:      string
			})]
			stretched_cluster_config?: [...close({
				preferred_location?: string
				secondary_location?: string
			})]
		})]

		// The ID of the PrivateCloud.
		name!: string

		// Network configuration in the consumer project with which the
		// peering has to be done.
		network_config?: [...close({
			dns_server_ip?:                        string
			management_cidr?:                      string
			management_ip_address_layout_version?: number
			vmware_engine_network?:                string
			vmware_engine_network_canonical?:      string
		})]

		// Details about a NSX Manager appliance.
		nsx?: [...close({
			fqdn?:        string
			internal_ip?: string
			state?:       string
			version?:     string
		})]
		project?: string

		// While set true, deletion_delay_hours value will be sent in the
		// request even for zero value of the field. This field is only
		// useful for setting 0 value to the deletion_delay_hours field.
		// It can be used both alone and together with
		// deletion_delay_hours.
		send_deletion_delay_hours_if_zero?: bool

		// State of the resource. New values may be added to this enum
		// when appropriate.
		state?: string

		// Initial type of the private cloud. Possible values:
		// ["STANDARD", "TIME_LIMITED", "STRETCHED"]
		type?: string

		// System-generated unique identifier for the resource.
		uid?: string

		// Last update time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string

		// Details about a vCenter Server management appliance.
		vcenter?: [...close({
			fqdn?:        string
			internal_ip?: string
			state?:       string
			version?:     string
		})]
	})
}
