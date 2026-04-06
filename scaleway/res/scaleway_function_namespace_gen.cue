package res

#scaleway_function_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_function_namespace")
	close({
		timeouts?: #timeouts

		// The description of the function namespace
		description?: string

		// The environment variables of the function namespace
		environment_variables?: [string]: string
		id?: string

		// The name of the function namespace
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The endpoint reachable by docker
		registry_endpoint?: string

		// The ID of the registry namespace
		registry_namespace_id?: string

		// The environment variables of the function namespace
		secret_environment_variables?: [string]: string

		// List of tags ["tag1", "tag2", ...] attached to the function
		// namespace
		tags?: [...string]
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
