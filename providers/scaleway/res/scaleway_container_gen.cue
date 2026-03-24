package res

#scaleway_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_container")
	close({
		health_check?: matchN(1, [#health_check, [...#health_check]])
		scaling_option?: matchN(1, [#scaling_option, [...#scaling_option]])
		timeouts?: #timeouts

		// Arguments passed to the command from the command "field".
		// Overrides the arguments from the container image.
		args?: [...string]

		// Command executed when the container starts. Overrides the
		// command from the container image.
		command?: [...string]

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

		// HTTP traffic configuration
		http_option?: string
		id?:          string

		// Local storage limit of the container (in MB)
		local_storage_limit?: number

		// The maximum of number of instances this container can scale to.
		max_scale?: number

		// The memory computing resources in MB to allocate to each
		// container.
		memory_limit?: number

		// The minimum of running container instances continuously.
		min_scale?: number

		// The container name
		name?: string

		// The container namespace associated
		namespace_id!: string

		// The port to expose the container.
		port?: number

		// The privacy type define the way to authenticate to your
		// container
		privacy?: string

		// ID of the Private Network the container is connected to
		private_network_id?: string

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

	#health_check: close({
		http!: matchN(1, [_#defs."/$defs/health_check/$defs/http", [_, ...] & [..._#defs."/$defs/health_check/$defs/http"]])

		// Number of consecutive health check failures before considering
		// the container unhealthy.
		failure_threshold!: number

		// Period between health checks.
		interval!: string
	})

	#scaling_option: close({
		// Scale depending on the number of concurrent requests being
		// processed per container instance.
		concurrent_requests_threshold?: number

		// Scale depending on the CPU usage of a container instance.
		cpu_usage_threshold?: number

		// Scale depending on the memory usage of a container instance.
		memory_usage_threshold?: number
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})

	_#defs: "/$defs/health_check/$defs/http": close({
		// Path to use for the HTTP health check.
		path!: string
	})
}
