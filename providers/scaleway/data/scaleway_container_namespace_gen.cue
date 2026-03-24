package data

#scaleway_container_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_container_namespace")
	close({
		// Activate VPC integration for the namespace
		activate_vpc_integration?: bool

		// The description of the container namespace
		description?: string

		// Destroy registry on deletion
		destroy_registry?: bool

		// The environment variables of the container namespace
		environment_variables?: [string]: string
		id?: string

		// The name of the container namespace
		name?: string

		// The ID of the Container namespace
		namespace_id?: string

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

		// The secret environment variables of the container namespace
		secret_environment_variables?: [string]: string

		// List of tags ["tag1", "tag2", ...] attached to the container
		// namespace
		tags?: [...string]
	})
}
