package data

scaleway_messageq_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_messageq_version")
	close({
		// Whether the version is in beta.
		beta?: bool

		// Whether the version is disabled.
		disabled?: bool

		// The end-of-life date of the version (RFC 3339 format).
		end_of_life?: string

		// The ID of the version, in the `{region}/{version}` format.
		id?: string

		// The MessageQ version name. Use `latest` to retrieve the most recent available
		// non-disabled version.
		name!: string

		// The region the MessageQ version is available in.
		region?: string

		// The MessageQ version string.
		version?: string
	})
}
