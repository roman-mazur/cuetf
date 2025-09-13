package res

import "list"

#google_alloydb_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_alloydb_instance")
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
		client_connection_config?: matchN(1, [#client_connection_config, list.MaxItems(1) & [...#client_connection_config]])

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

		// Identifies the alloydb cluster. Must be in the format
		// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
		cluster!: string

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
		instance_type!: string

		// The IP address for the Instance. This is the connection
		// endpoint for an end-user application.
		ip_address?: string
		id?:         string

		// User-defined labels for the alloydb instance.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		machine_config?: matchN(1, [#machine_config, list.MaxItems(1) & [...#machine_config]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		psc_instance_config?: matchN(1, [#psc_instance_config, list.MaxItems(1) & [...#psc_instance_config]])
		query_insights_config?: matchN(1, [#query_insights_config, list.MaxItems(1) & [...#query_insights_config]])
		read_pool_config?: matchN(1, [#read_pool_config, list.MaxItems(1) & [...#read_pool_config]])
		timeouts?: #timeouts

		// The name of the instance resource.
		name?: string

		// The outbound public IP addresses for the instance. This is
		// available ONLY when
		// networkConfig.enableOutboundPublicIp is set to true. These IP
		// addresses are used
		// for outbound connections.
		outbound_public_ip_addresses?: [...string]

		// The public IP addresses for the Instance. This is available
		// ONLY when
		// networkConfig.enablePublicIp is set to true. This is the
		// connection
		// endpoint for an end-user application.
		public_ip_address?: string

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

	#client_connection_config: close({
		ssl_config?: matchN(1, [_#defs."/$defs/client_connection_config/$defs/ssl_config", list.MaxItems(1) & [..._#defs."/$defs/client_connection_config/$defs/ssl_config"]])

		// Configuration to enforce connectors only (ex: AuthProxy)
		// connections to the database.
		require_connectors?: bool
	})

	#machine_config: close({
		// The number of CPU's in the VM instance.
		cpu_count?: number

		// Machine type of the VM instance.
		// E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd".
		// 'cpu_count' must match the number of vCPUs in the machine type.
		machine_type?: string
	})

	#network_config: close({
		// Name of the allocated IP range for the private IP AlloyDB
		// instance, for example: "google-managed-services-default".
		// If set, the instance IPs will be created from this allocated
		// range and will override the IP range used by the parent
		// cluster.
		// The range name must comply with RFC 1035. Specifically, the
		// name must be 1-63 characters long and match the regular
		// expression [a-z]([-a-z0-9]*[a-z0-9])?.
		allocated_ip_range_override?: string
		authorized_external_networks?: matchN(1, [_#defs."/$defs/network_config/$defs/authorized_external_networks", [..._#defs."/$defs/network_config/$defs/authorized_external_networks"]])

		// Enabling outbound public ip for the instance.
		enable_outbound_public_ip?: bool

		// Enabling public ip for the instance. If a user wishes to
		// disable this,
		// please also clear the list of the authorized external networks
		// set on
		// the same instance.
		enable_public_ip?: bool
	})

	#psc_instance_config: close({
		// List of consumer projects that are allowed to create PSC
		// endpoints to service-attachments to this instance.
		// These should be specified as project numbers only.
		allowed_consumer_projects?: [...string]

		// The DNS name of the instance for PSC connectivity.
		// Name convention: <uid>.<uid>.<region>.alloydb-psc.goog
		psc_dns_name?: string
		psc_auto_connections?: matchN(1, [_#defs."/$defs/psc_instance_config/$defs/psc_auto_connections", [..._#defs."/$defs/psc_instance_config/$defs/psc_auto_connections"]])

		// The service attachment created when Private Service Connect
		// (PSC) is enabled for the instance.
		// The name of the resource will be in the format of
		// 'projects/<alloydb-tenant-project-number>/regions/<region-name>/serviceAttachments/<service-attachment-name>'
		service_attachment_link?: string
		psc_interface_configs?: matchN(1, [_#defs."/$defs/psc_instance_config/$defs/psc_interface_configs", [..._#defs."/$defs/psc_instance_config/$defs/psc_interface_configs"]])
	})

	#query_insights_config: close({
		// Number of query execution plans captured by Insights per minute
		// for all queries combined. The default value is 5. Any integer
		// between 0 and 20 is considered valid.
		query_plans_per_minute?: number

		// Query string length. The default value is 1024. Any integer
		// between 256 and 4500 is considered valid.
		query_string_length?: number

		// Record application tags for an instance. This flag is turned
		// "on" by default.
		record_application_tags?: bool

		// Record client address for an instance. Client address is PII
		// information. This flag is turned "on" by default.
		record_client_address?: bool
	})

	#read_pool_config: close({
		// Read capacity, i.e. number of nodes in a read pool instance.
		node_count?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/client_connection_config/$defs/ssl_config": close({
		// SSL mode. Specifies client-server SSL/TLS connection behavior.
		// Possible values: ["ENCRYPTED_ONLY",
		// "ALLOW_UNENCRYPTED_AND_ENCRYPTED"]
		ssl_mode?: string
	})

	_#defs: "/$defs/network_config/$defs/authorized_external_networks": close({
		// CIDR range for one authorized network of the instance.
		cidr_range?: string
	})

	_#defs: "/$defs/psc_instance_config/$defs/psc_auto_connections": close({
		// The consumer network for the PSC service automation, example:
		// "projects/vpc-host-project/global/networks/default".
		// The consumer network might be hosted a different project than
		// the
		// consumer project. The API expects the consumer project
		// specified to be
		// the project ID (and not the project number)
		consumer_network?: string

		// The status of the service connection policy.
		consumer_network_status?: string

		// The consumer project to which the PSC service automation
		// endpoint will
		// be created. The API expects the consumer project to be the
		// project ID(
		// and not the project number).
		consumer_project?: string

		// The IP address of the PSC service automation endpoint.
		ip_address?: string

		// The status of the PSC service automation connection.
		status?: string
	})

	_#defs: "/$defs/psc_instance_config/$defs/psc_interface_configs": close({
		// The network attachment resource created in the consumer project
		// to which the PSC interface will be linked.
		// This is of the format:
		// "projects/${CONSUMER_PROJECT}/regions/${REGION}/networkAttachments/${NETWORK_ATTACHMENT_NAME}".
		// The network attachment must be in the same region as the
		// instance.
		network_attachment_resource?: string
	})
}
