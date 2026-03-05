package res

import "list"

#scaleway_object_bucket_website_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_object_bucket_website_configuration")
	close({
		error_document?: matchN(1, [#error_document, list.MaxItems(1) & [...#error_document]])
		index_document!: matchN(1, [#index_document, list.MaxItems(1) & [_, ...] & [...#index_document]])

		// The bucket's name or regional ID.
		bucket!: string
		id?:     string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The website endpoint.
		website_domain?: string

		// The domain of the website endpoint.
		website_endpoint?: string
	})

	#error_document: close({
		// Key for the object to use as an error document.
		key!: string
	})

	#index_document: close({
		// Suffix that will be added to the index.
		suffix!: string
	})
}
