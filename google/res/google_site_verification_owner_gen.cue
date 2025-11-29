package res

#google_site_verification_owner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_site_verification_owner")
	close({
		timeouts?: #timeouts

		// The email address of the owner.
		email!: string
		id?:    string

		// The id of the Web Resource to add this owner to, in the form
		// "webResource/<web-resource-id>".
		web_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
