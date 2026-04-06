package res

import "list"

#scaleway_inference_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_inference_deployment")
	close({
		private_endpoint?: matchN(1, [#private_endpoint, list.MaxItems(1) & [...#private_endpoint]])
		private_ip?: matchN(1, [#private_ip, [...#private_ip]])
		public_endpoint?: matchN(1, [#public_endpoint, list.MaxItems(1) & [...#public_endpoint]])
		timeouts?: #timeouts

		// Whether or not the deployment is accepting eula
		accept_eula?: bool

		// The date and time of the creation of the deployment
		created_at?: string
		id?:         string

		// The maximum size of the pool
		max_size?: number

		// The minimum size of the pool
		min_size?: number

		// The model id used for the deployment
		model_id!: string

		// The model name to use for the deployment
		model_name?: string

		// The deployment name
		name?: string

		// The node type to use for the deployment
		node_type!: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The number of bits each model parameter should be quantized to
		quantization?: number

		// The region you want to attach the resource to
		region?: string

		// The size of the pool
		size?: number

		// The status of the deployment
		status?: string

		// The tags associated with the deployment
		tags?: [...string]

		// The date and time of the last update of the deployment
		updated_at?: string
	})

	#private_endpoint: close({
		// Disable the authentication on the endpoint.
		disable_auth?: bool

		// The id of the private endpoint
		id?: string

		// The id of the private network
		private_network_id?: string

		// The URL of the endpoint.
		url?: string
	})

	#private_ip: close({
		// The private IPv4 address
		address?: string

		// The ID of the IPv4 address resource
		id?: string
	})

	#public_endpoint: close({
		// Disable the authentication on the endpoint.
		disable_auth?: bool

		// The id of the public endpoint
		id?: string

		// Enable or disable public endpoint
		is_enabled?: bool

		// The URL of the endpoint.
		url?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
