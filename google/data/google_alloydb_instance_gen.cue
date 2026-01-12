package data

#google_alloydb_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_alloydb_instance")
	close({
		// 'Specifies whether an instance needs to spin up. Once the
		// instance is
		// active, the activation policy can be updated to the 'NEVER' to
		// stop the
		// instance. Likewise, the activation policy can be updated to
		// 'ALWAYS' to
		// start the instance.
		// There are restrictions around when an instance can/cannot be
		// activated (for
		// example, a read pool instance should be stopped before stopping
		// primary
		// etc.). Please refer to the API documentation for more details.
		// Possible values are: 'ACTIVATION_POLICY_UNSPECIFIED', 'ALWAYS',
		// 'NEVER'.' Possible values: ["ACTIVATION_POLICY_UNSPECIFIED",
		// "ALWAYS", "NEVER"]
		activation_policy?: string

		// Annotations to allow client tools to store small amount of
		// arbitrary data. This is distinct from labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// 'Availability type of an Instance. Defaults to REGIONAL for
		// both primary and read instances.
		// Note that primary and read instances can have different
		// availability types.
		// Primary instances can be either ZONAL or REGIONAL. Read Pool
		// instances can also be either ZONAL or REGIONAL.
		// Read pools of size 1 can only have zonal availability. Read
		// pools with a node count of 2 or more
		// can have regional availability (nodes are present in 2 or more
		// zones in a region).
		// Possible values are: 'AVAILABILITY_TYPE_UNSPECIFIED', 'ZONAL',
		// 'REGIONAL'.' Possible values:
		// ["AVAILABILITY_TYPE_UNSPECIFIED", "ZONAL", "REGIONAL"]
		availability_type?: string

		// Client connection specific configurations.
		client_connection_config?: [...close({
			require_connectors?: bool
			ssl_config?: [...close({
				ssl_mode?: string
			})]
		})]

		// Identifies the alloydb cluster. Must be in the format
		// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
		cluster?: string

		// The ID of the alloydb cluster that the instance belongs
		// to.'alloydb_cluster_id'
		cluster_id!: string

		// Configuration for Managed Connection Pool.
		connection_pool_config?: [...close({
			enabled?: bool
			flags?: [string]: string
			pooler_count?: number
		})]

		// Time the Instance was created in UTC.
		create_time?: string

		// Database flags. Set at instance level. * They are copied from
		// primary instance on read instance creation. * Read instances
		// can set new or override existing flags that are relevant for
		// reads, e.g. for enabling columnar cache on a read instance.
		// Flags set on read instance may or may not be present on
		// primary.
		database_flags?: [string]: string

		// User-settable and human-readable display name for the Instance.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The Compute Engine zone that the instance should serve from,
		// per https://cloud.google.com/compute/docs/regions-zones This
		// can ONLY be specified for ZONAL instances. If present for a
		// REGIONAL instance, an error will be thrown. If this is absent
		// for a ZONAL instance, instance is created in a random zone
		// with available capacity.
		gce_zone?: string

		// The ID of the alloydb instance.
		instance_id!: string

		// The type of the instance.
		// If the instance type is READ_POOL, provide the associated
		// PRIMARY/SECONDARY instance in the 'depends_on' meta-data
		// attribute.
		// If the instance type is SECONDARY, point to the cluster_type of
		// the associated secondary cluster instead of mentioning
		// SECONDARY.
		// Example: {instance_type =
		// google_alloydb_cluster.<secondary_cluster_name>.cluster_type}
		// instead of {instance_type = SECONDARY}
		// If the instance type is SECONDARY, the terraform delete
		// instance operation does not delete the secondary instance but
		// abandons it instead.
		// Use deletion_policy = "FORCE" in the associated secondary
		// cluster and delete the cluster forcefully to delete the
		// secondary cluster as well its associated secondary instance.
		// Users can undo the delete secondary instance action by
		// importing the deleted secondary instance by calling terraform
		// import. Possible values: ["PRIMARY", "READ_POOL", "SECONDARY"]
		instance_type?: string
		id?:            string

		// The IP address for the Instance. This is the connection
		// endpoint for an end-user application.
		ip_address?: string

		// User-defined labels for the alloydb instance.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The canonical ID for the location. For example: "us-east1".
		location?: string

		// Configurations for the machines that host the underlying
		// database engine.
		machine_config?: [...close({
			cpu_count?:    number
			machine_type?: string
		})]

		// The name of the instance resource.
		name?: string

		// Instance level network configuration.
		network_config?: [...close({
			allocated_ip_range_override?: string
			authorized_external_networks?: [...close({
				cidr_range?: string
			})]
			enable_outbound_public_ip?: bool
			enable_public_ip?:          bool
		})]

		// The outbound public IP addresses for the instance. This is
		// available ONLY when
		// networkConfig.enableOutboundPublicIp is set to true. These IP
		// addresses are used
		// for outbound connections.
		outbound_public_ip_addresses?: [...string]

		// Project ID of the project.
		project?: string

		// Configuration for Private Service Connect (PSC) for the
		// instance.
		psc_instance_config?: [...close({
			allowed_consumer_projects?: [...string]
			psc_auto_connections?: [...close({
				consumer_network?:        string
				consumer_network_status?: string
				consumer_project?:        string
				ip_address?:              string
				status?:                  string
			})]
			psc_dns_name?: string
			psc_interface_configs?: [...close({
				network_attachment_resource?: string
			})]
			service_attachment_link?: string
		})]

		// The public IP addresses for the Instance. This is available
		// ONLY when
		// networkConfig.enablePublicIp is set to true. This is the
		// connection
		// endpoint for an end-user application.
		public_ip_address?: string

		// Configuration for query insights.
		query_insights_config?: [...close({
			query_plans_per_minute?:  number
			query_string_length?:     number
			record_application_tags?: bool
			record_client_address?:   bool
		})]

		// Read pool specific config. If the instance type is READ_POOL,
		// this configuration must be provided.
		read_pool_config?: [...close({
			node_count?: number
		})]

		// Set to true if the current state of Instance does not match the
		// user's intended state, and the service is actively updating
		// the resource to reconcile them. This can happen due to
		// user-triggered updates or system actions like failover or
		// maintenance.
		reconciling?: bool

		// The current state of the alloydb instance.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The system-generated UID of the resource.
		uid?: string

		// Time the Instance was updated in UTC.
		update_time?: string
	})
}
