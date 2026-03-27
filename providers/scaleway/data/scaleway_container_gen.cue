package data

#scaleway_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_container")
	close({
		// Arguments passed to the command from the command "field".
		// Overrides the arguments from the container image.
		args?: [...string]

		// Command executed when the container starts. Overrides the
		// command from the container image.
		command?: [...string]

		// The ID of the Container
		container_id?: string

		// The amount of vCPU computing resources to allocate to each
		// container. Defaults to 70.
		cpu_limit?: number

		// The cron status
		cron_status?: string

		// This allows you to control your production environment
		deploy?: bool

		// The container description
		description?: string

		// The native container domain name.
		domain_name?: string

		// The environment variables to be injected into your container at
		// runtime.
		environment_variables?: [string]: string

		// The error description
		error_message?: string

		// Health check configuration of the container.
		health_check?: [...close({
			failure_threshold?: number
			http?: [...close({
				path?: string
			})]
			interval?: string
		})]

		// HTTP traffic configuration
		http_option?: string
		id?:          string

		// Local storage limit of the container (in MB)
		local_storage_limit?: number

		// The maximum the number of simultaneous requests your container
		// can handle at the same time.
		max_concurrency?: number

		// The maximum of number of instances this container can scale to.
		max_scale?: number

		// The memory computing resources in MB to allocate to each
		// container.
		memory_limit?: number

		// The minimum of running container instances continuously.
		min_scale?: number

		// The container name
		name?: string

		// The ID of the Container namespace
		namespace_id!: string

		// The port to expose the container.
		port?: number

		// The privacy type define the way to authenticate to your
		// container
		privacy?: string

		// ID of the Private Network the container is connected to
		private_network_id?: string

		// The ID of the project to filter the Container
		project_id?: string

		// The communication protocol http1 or h2c. Defaults to http1.
		protocol?: string

		// The region you want to attach the resource to
		region?: string

		// The scaleway registry image address
		registry_image?: string

		// The sha256 of your source registry image, changing it will
		// re-apply the deployment. Can be any string
		registry_sha256?: string

		// Execution environment of the container.
		sandbox?: string

		// Configuration used to decide when to scale up or down.
		scaling_option?: [...close({
			concurrent_requests_threshold?: number
			cpu_usage_threshold?:           number
			memory_usage_threshold?:        number
		})]

		// The secret environment variables to be injected into your
		// container at runtime.
		secret_environment_variables?: [string]: string

		// The container status
		status?: string

		// List of tags ["tag1", "tag2", ...] attached to the container.
		tags?: [...string]

		// The maximum amount of time in seconds during which your
		// container can process a request before we stop it. Defaults to
		// 300s.
		timeout?: number
	})
}
