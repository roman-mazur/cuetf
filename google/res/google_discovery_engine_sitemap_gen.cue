package res

#google_discovery_engine_sitemap: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_sitemap")
	close({
		// Timestamp when the sitemap was created.
		create_time?: string

		// The unique id of the data store.
		data_store_id!: string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the sitemap. Values are of the
		// format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/sitemaps/{sitemap_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024
		// characters.
		name?: string
		id?:   string

		// The unique id of the sitemap.
		sitemap_id?: string
		project?:    string
		timeouts?:   #timeouts

		// Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
		uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
