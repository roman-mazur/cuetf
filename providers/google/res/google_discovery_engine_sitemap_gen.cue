package res

google_discovery_engine_sitemap: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_sitemap")
	close({
		timeouts?: #timeouts

		// Timestamp when the sitemap was created.
		create_time?: string

		// The unique id of the data store.
		data_store_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The geographic location where the data store should reside. The value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the sitemap. Values are of the format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/sitemaps/{sitemap_id}'.
		// This field must be a UTF-8 encoded string with a length limit of 1024
		// characters.
		name?: string

		// The unique id of the sitemap.
		sitemap_id?: string
		project?:    string

		// Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
		uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
