package res

import "list"

#google_apigee_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_environment")
	close({
		// Optional. API Proxy type supported by the environment. The type
		// can be set when creating
		// the Environment and cannot be changed. Possible values:
		// ["API_PROXY_TYPE_UNSPECIFIED", "PROGRAMMABLE", "CONFIGURABLE"]
		api_proxy_type?: string

		// Optional. Deployment type supported by the environment. The
		// deployment type can be
		// set when creating the environment and cannot be changed. When
		// you enable archive
		// deployment, you will be prevented from performing a subset of
		// actions within the
		// environment, including:
		// Managing the deployment of API proxy or shared flow revisions;
		// Creating, updating, or deleting resource files;
		// Creating, updating, or deleting target servers. Possible
		// values: ["DEPLOYMENT_TYPE_UNSPECIFIED", "PROXY", "ARCHIVE"]
		deployment_type?: string

		// Description of the environment.
		description?: string

		// Display name of the environment.
		display_name?: string

		// Optional. URI of the forward proxy to be applied to the runtime
		// instances in this environment. Must be in the format of
		// {scheme}://{hostname}:{port}. Note that the scheme must be one
		// of "http" or "https", and the port must be supplied.
		forward_proxy_uri?: string
		id?:                string

		// The resource ID of the environment.
		name!: string
		client_ip_resolution_config?: matchN(1, [#client_ip_resolution_config, list.MaxItems(1) & [...#client_ip_resolution_config]])
		node_config?: matchN(1, [#node_config, list.MaxItems(1) & [...#node_config]])
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
		timeouts?: #timeouts

		// The Apigee Organization associated with the Apigee environment,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// Types that can be selected for an Environment. Each of the
		// types are
		// limited by capability and capacity. Refer to Apigee's public
		// documentation
		// to understand about each of these types in details.
		// An Apigee org can support heterogeneous Environments. Possible
		// values: ["ENVIRONMENT_TYPE_UNSPECIFIED", "BASE",
		// "INTERMEDIATE", "COMPREHENSIVE"]
		type?: string
	})

	#client_ip_resolution_config: close({
		header_index_algorithm?: matchN(1, [_#defs."/$defs/client_ip_resolution_config/$defs/header_index_algorithm", list.MaxItems(1) & [..._#defs."/$defs/client_ip_resolution_config/$defs/header_index_algorithm"]])
	})

	#node_config: close({
		// The current total number of gateway nodes that each environment
		// currently has across
		// all instances.
		current_aggregate_node_count?: string

		// The maximum total number of gateway nodes that the is reserved
		// for all instances that
		// has the specified environment. If not specified, the default is
		// determined by the
		// recommended maximum number of nodes for that gateway.
		max_node_count?: string

		// The minimum total number of gateway nodes that the is reserved
		// for all instances that
		// has the specified environment. If not specified, the default is
		// determined by the
		// recommended minimum number of nodes for that gateway.
		min_node_count?: string
	})

	#properties: close({
		property?: matchN(1, [_#defs."/$defs/properties/$defs/property", [..._#defs."/$defs/properties/$defs/property"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/client_ip_resolution_config/$defs/header_index_algorithm": close({
		// The index of the ip in the header. Positive indices 0, 1, 2, 3
		// chooses indices from the left (first ips). Negative indices
		// -1, -2, -3 chooses indices from the right (last ips).
		ip_header_index!: number

		// The name of the header to extract the client ip from. We are
		// currently only supporting the X-Forwarded-For header.
		ip_header_name!: string
	})

	_#defs: "/$defs/properties/$defs/property": close({
		// The property key.
		name?: string

		// The property value.
		value?: string
	})
}
