package res

#google_iap_brand: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iap_brand")
	close({
		// Application name displayed on OAuth consent screen.
		application_title!: string
		id?:                string

		// Output only. Identifier of the brand, in the format
		// 'projects/{project_number}/brands/{brand_id}'
		// NOTE: The name can also be expressed as
		// 'projects/{project_id}/brands/{brand_id}', e.g. when
		// importing.
		// NOTE: The brand identification corresponds to the project
		// number as only one
		// brand can be created per project.
		name?: string

		// Whether the brand is only intended for usage inside the GSuite
		// organization only.
		org_internal_only?: bool
		timeouts?:          #timeouts
		project?:           string

		// Support email displayed on the OAuth consent screen. Can be
		// either a
		// user or group email. When a user email is specified, the caller
		// must
		// be the user with the associated email address. When a group
		// email is
		// specified, the caller can be either a user or a service account
		// which
		// is an owner of the specified group in Cloud Identity.
		support_email!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
