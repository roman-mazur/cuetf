package res

#scaleway_vpc_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_connector")
	close({
		// The date and time of the creation of the vpc connector
		created_at?: string
		id?:         string

		// The name of the VPC connector
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The Scaleway Project the VPC connector belongs to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The VPC connector status
		status?: string

		// The tags associated with the VPC connector
		tags?: [...string]

		// The ID of the target VPC to connect to
		target_vpc_id!: string

		// The date and time of the last update of the vpc connector
		updated_at?: string

		// The ID of the source VPC
		vpc_id!: string
	})
}
