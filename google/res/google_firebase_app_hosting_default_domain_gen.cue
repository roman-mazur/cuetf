package res

#google_firebase_app_hosting_default_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_app_hosting_default_domain")
	close({
		// The ID of the Backend that this Domain is associated with
		backend!: string

		// Time at which the domain was created.
		create_time?: string

		// Whether the domain is disabled. Defaults to false.
		disabled?: bool

		// Id of the domain. For default domain, it should be
		// {{backend}}--{{project_id}}.{{location}}.hosted.app
		domain_id!: string

		// Server-computed checksum based on other values; may be sent
		// on update or delete to ensure operation is done on expected
		// resource.
		etag?: string
		id?:   string

		// The location of the Backend that this Domain is associated with
		location!: string

		// Identifier. The resource name of the domain, e.g.
		// 'projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}'
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// System-assigned, unique identifier.
		uid?: string

		// Time at which the domain was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
