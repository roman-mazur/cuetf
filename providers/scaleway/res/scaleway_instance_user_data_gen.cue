package res

#scaleway_instance_user_data: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_user_data")
	close({
		timeouts?: #timeouts
		id?:       string

		// The key of the user data to set.
		key!: string

		// The ID of the server
		server_id!: string

		// The value of the user data to set.
		value!: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
