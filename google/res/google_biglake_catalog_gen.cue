package res

#google_biglake_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_catalog")
	close({
		// Output only. The creation time of the catalog. A timestamp in
		// RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional
		// digits.
		create_time?: string

		// Output only. The deletion time of the catalog. Only set after
		// the catalog
		// is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
		// nanosecond
		// resolution and up to nine fractional digits.
		delete_time?: string

		// Output only. The time when this catalog is considered expired.
		// Only set
		// after the catalog is deleted. Only set after the catalog is
		// deleted.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits.
		expire_time?: string
		id?:          string

		// The geographic location where the Catalog should reside.
		location!: string

		// The name of the Catalog. Format:
		// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}
		name!:     string
		project?:  string
		timeouts?: #timeouts

		// Output only. The last modification time of the catalog. A
		// timestamp in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
		// nine
		// fractional digits.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
