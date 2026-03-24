package res

#scaleway_registry_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_registry_namespace")
	close({
		// The description of the container registry namespace
		description?: string

		// The endpoint reachable by docker
		endpoint?: string

		// Define the default visibility policy
		is_public?: bool
		id?:        string
		timeouts?:  #timeouts

		// The name of the container registry namespace
		name!: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
