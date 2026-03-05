package res

#scaleway_datawarehouse_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_datawarehouse_user")
	close({
		// ID of the Datawarehouse deployment to which this user belongs.
		deployment_id!: string
		id?:            string

		// Whether the user has administrator privileges.
		is_admin?: bool

		// Name of the ClickHouse user.
		name!: string

		// Password for the ClickHouse user.
		password!: string

		// The region you want to attach the resource to
		region?: string
	})
}
