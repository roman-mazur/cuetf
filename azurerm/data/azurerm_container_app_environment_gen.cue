package data

#azurerm_container_app_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_app_environment")
	close({
		// The ID of the Custom Domain Verification for this Container App
		// Environment.
		custom_domain_verification_id?: string

		// The default publicly resolvable name of this Container App
		// Environment
		default_domain?: string

		// The network addressing in which the Container Apps in this
		// Container App Environment will reside in CIDR notation.
		docker_bridge_cidr?: string
		id?:                 string

		// The existing Subnet in use by the Container Apps Control Plane.
		infrastructure_subnet_id?: string

		// Does the Container Environment operate in Internal Load
		// Balancing Mode?
		internal_load_balancer_enabled?: bool
		location?:                       string

		// The name of the Log Analytics Workspace this Container Apps
		// Managed Environment is linked to.
		log_analytics_workspace_name?: string

		// The name of the Container Apps Managed Environment.
		name!: string

		// The IP range, in CIDR notation, that is reserved for
		// environment infrastructure IP addresses.
		platform_reserved_cidr?: string

		// The IP address from the IP range defined by
		// `platform_reserved_cidr` that is reserved for the internal DNS
		// server.
		platform_reserved_dns_ip_address?: string
		timeouts?:                         #timeouts
		resource_group_name!:              string

		// The Static IP Address of the Environment.
		static_ip_address?: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
