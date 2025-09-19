package data

#google_memcache_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_memcache_instance")
	close({
		// The full name of the GCE network to connect the instance to. If
		// not provided,
		// 'default' will be used.
		authorized_network?: string

		// Creation timestamp in RFC3339 text format.
		create_time?: string

		// Endpoint for Discovery API
		discovery_endpoint?: string

		// A user-visible name for the instance.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Resource labels to represent user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Maintenance policy for an instance.
		maintenance_policy?: [...close({
			create_time?: string
			description?: string
			update_time?: string
			weekly_maintenance_window?: [...close({
				day?:      string
				duration?: string
				start_time?: [...close({
					hours?:   number
					minutes?: number
					nanos?:   number
					seconds?: number
				})]
			})]
		})]

		// Output only. Published maintenance schedule.
		maintenance_schedule?: [...close({
			end_time?:               string
			schedule_deadline_time?: string
			start_time?:             string
		})]

		// The full version of memcached server running on this instance.
		memcache_full_version?: string

		// Additional information about the instance state, if available.
		memcache_nodes?: [...close({
			host?:    string
			node_id?: string
			port?:    number
			state?:   string
			zone?:    string
		})]

		// User-specified parameters for this memcache instance.
		memcache_parameters?: [...close({
			id?: string
			params?: [string]: string
		})]

		// The major version of Memcached software. If not provided,
		// latest supported version will be used.
		// Currently the latest supported major version is MEMCACHE_1_5.
		// The minor version will be automatically
		// determined by our system based on the latest supported minor
		// version. Default value: "MEMCACHE_1_5" Possible values:
		// ["MEMCACHE_1_5", "MEMCACHE_1_6_15"]
		memcache_version?: string

		// The resource name of the instance.
		name!: string

		// Configuration for memcache nodes.
		node_config?: [...close({
			cpu_count?:      number
			memory_size_mb?: number
		})]

		// Number of nodes in the memcache instance.
		node_count?: number

		// The region of the Memcache instance. If it is not provided, the
		// provider region is used.
		region?:  string
		project?: string

		// Contains the name of allocated IP address ranges associated
		// with
		// the private service access connection for example,
		// "test-default"
		// associated with IP range 10.0.0.0/29.
		reserved_ip_range_id?: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Zones where memcache nodes should be provisioned. If not
		// provided, all zones will be used.
		zones?: [...string]
	})
}
