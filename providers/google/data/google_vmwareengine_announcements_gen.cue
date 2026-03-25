package data

#google_vmwareengine_announcements: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vmwareengine_announcements")
	close({
		// A list of announcements
		announcements?: [...close({
			code?: string
			metadata?: [string]: string
			name?:                 string
			target_resource_type?: string
		})]
		id?: string

		// The resource name of the specific Announcements to retrieve. If
		// provided, the 'announcements' list will contain only this
		// announcement.
		name?: string

		// Required. The resource name of the location to be queried for
		// announcements. Resource names are schemeless URIs that follow
		// the conventions in
		// https://cloud.google.com/apis/design/resource_names. For
		// example: projects/my-project/locations/us-west1-a
		parent!: string
	})
}
