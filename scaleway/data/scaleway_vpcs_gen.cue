package data

#scaleway_vpcs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpcs")
	close({
		id?: string

		// VPCs with a name like it are listed.
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// VPCs with these exact tags are listed.
		tags?: [...string]

		// List of VPCs.
		vpcs?: [...close({
			created_at?:      string
			id?:              string
			is_default?:      bool
			name?:            string
			organization_id?: string
			project_id?:      string
			region?:          string
			tags?: [...string]
			update_at?: string
		})]
	})
}
