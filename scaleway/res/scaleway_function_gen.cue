package res

#scaleway_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_function")
	close({
		timeouts?: #timeouts

		// CPU limit in mCPU for your function
		cpu_limit?: number

		// Define if the function should be deployed, terraform will wait
		// for function to be deployed
		deploy?: bool

		// The description of the function
		description?: string

		// The native function domain name.
		domain_name?: string

		// The environment variables of the function
		environment_variables?: [string]: string

		// Handler of the function. Depends on the runtime
		// https://developers.scaleway.com/en/products/functions/api/#create-a-function
		handler!: string

		// HTTP traffic configuration
		http_option?: string
		id?:          string

		// Maximum replicas for your function (defaults to 20), our system
		// will scale your functions automatically based on incoming
		// workload, but will never scale the number of replicas above
		// the configured max_scale.
		max_scale?: number

		// Memory limit in MB for your function, defaults to 256MB
		memory_limit?: number

		// Minimum replicas for your function, defaults to 0, Note that a
		// function is billed when it gets executed, and using a
		// min_scale greater than 0 will cause your function to run all
		// the time.
		min_scale?: number

		// The name of the function
		name?: string

		// The namespace ID associated with this function
		namespace_id!: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// Privacy of the function. Can be either `private` or `public`
		privacy!: string

		// ID of the Private Network the container is connected to
		private_network_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Runtime of the function
		runtime!: string

		// Execution environment of the function.
		sandbox?: string

		// The secret environment variables to be injected into your
		// function at runtime.
		secret_environment_variables?: [string]: string

		// List of tags ["tag1", "tag2", ...] attached to the function.
		tags?: [...string]

		// Holds the max duration (in seconds) the function is allowed for
		// responding to a request
		timeout?: number

		// Location of the zip file to upload containing your function
		// sources
		zip_file?: string

		// The hash of your source zip file, changing it will re-apply
		// function. Can be any string
		zip_hash?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
