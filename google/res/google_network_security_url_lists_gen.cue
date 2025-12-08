package res

#google_network_security_url_lists: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_url_lists")
	close({
		// Output only. Time when the security policy was created.
		// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: '2014-10-02T15:01:23Z' and
		// '2014-10-02T15:01:23.045123456Z'
		create_time?: string

		// Free-text description of the resource.
		description?: string

		// The location of the url lists.
		location!: string

		// Short name of the UrlList resource to be created.
		// This value should be 1-63 characters long, containing only
		// letters, numbers, hyphens, and underscores, and should not
		// start with a number. E.g. 'urlList'.
		name!: string
		id?:   string

		// Output only. Time when the security policy was updated.
		// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: '2014-10-02T15:01:23Z' and
		// '2014-10-02T15:01:23.045123456Z'.
		update_time?: string
		project?:     string
		timeouts?:    #timeouts

		// FQDNs and URLs.
		values!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
