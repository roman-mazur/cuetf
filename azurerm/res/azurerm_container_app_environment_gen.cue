package res

import "list"

#azurerm_container_app_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_app_environment")
	close({
		// The ID of the Custom Domain Verification for this Container App
		// Environment.
		custom_domain_verification_id?: string

		// Application Insights connection string used by Dapr to export
		// Service to Service communication telemetry.
		dapr_application_insights_connection_string?: string

		// The default publicly resolvable name of this Container App
		// Environment
		default_domain?: string

		// The network addressing in which the Container Apps in this
		// Container App Environment will reside in CIDR notation.
		docker_bridge_cidr?: string
		id?:                 string

		// Name of the platform-managed resource group created for the
		// Managed Environment to host infrastructure resources.
		// **Note:** Only valid if a `workload_profile` is specified. If
		// `infrastructure_subnet_id` is specified, this resource group
		// will be created in the same subscription as
		// `infrastructure_subnet_id`.
		infrastructure_resource_group_name?: string

		// The existing Subnet to use for the Container Apps Control
		// Plane. **NOTE:** The Subnet must have a `/21` or larger
		// address space.
		infrastructure_subnet_id?: string

		// Should the Container Environment operate in Internal Load
		// Balancing Mode? Defaults to `false`. **Note:** can only be set
		// to `true` if `infrastructure_subnet_id` is specified.
		internal_load_balancer_enabled?: bool
		location!:                       string

		// The ID for the Log Analytics Workspace to link this Container
		// Apps Managed Environment to.
		log_analytics_workspace_id?: string
		logs_destination?:           string

		// Should mutual transport layer security (mTLS) be enabled?
		// Defaults to `false`. **Note:** This feature is in public
		// preview. Enabling mTLS for your applications may increase
		// response latency and reduce maximum throughput in high-load
		// scenarios.
		mutual_tls_enabled?: bool

		// The name of the Container Apps Managed Environment.
		name!: string

		// The IP range, in CIDR notation, that is reserved for
		// environment infrastructure IP addresses.
		platform_reserved_cidr?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?: #timeouts
		workload_profile?: matchN(1, [#workload_profile, [...#workload_profile]])

		// The IP address from the IP range defined by
		// `platform_reserved_cidr` that is reserved for the internal DNS
		// server.
		platform_reserved_dns_ip_address?: string

		// The public network access setting for the Container App
		// Environment.
		public_network_access?: string
		resource_group_name!:   string

		// The Static IP Address of the Environment.
		static_ip_address?: string
		tags?: [string]: string
		zone_redundancy_enabled?: bool
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#workload_profile: close({
		maximum_count?:         number
		minimum_count?:         number
		name!:                  string
		workload_profile_type!: string
	})
}
