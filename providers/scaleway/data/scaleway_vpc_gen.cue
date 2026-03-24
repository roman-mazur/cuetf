package data

#scaleway_vpc: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc")
	close({
		// The date and time of the creation of the private network
		created_at?: string

		// Defines whether the VPC advertises custom routes between its
		// Private Networks
		enable_custom_routes_propagation?: bool

		// Enable routing between Private Networks in the VPC
		enable_routing?: bool
		id?:             string

		// Defines whether the VPC is the default one for its Project
		is_default?: bool

		// The name of the VPC
		name?: string

		// ID of organization the resource is associated to.
		organization_id?: string

		// The project ID the resource is associated to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The tags associated with the VPC
		tags?: [...string]

		// The date and time of the last update of the private network
		updated_at?: string

		// The ID of the VPC
		vpc_id?: string
	})
}
