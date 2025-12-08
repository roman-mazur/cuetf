package res

#google_access_context_manager_service_perimeter_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_access_context_manager_service_perimeter_resource")
	close({
		// The name of the Access Policy this resource belongs to.
		access_policy_id?: string

		// The perimeter etag is internally used to prevent overwriting
		// the list of perimeter resources on PATCH calls. It is
		// retrieved from the same GET perimeter API call that's used to
		// get the current list of resources. The resource to add or
		// remove is merged into that list and then this etag is sent
		// with the PATCH call along with the updated resource list.
		etag?: string

		// The name of the Service Perimeter to add this resource to.
		perimeter_name!: string
		id?:             string
		timeouts?:       #timeouts

		// A GCP resource that is inside of the service perimeter.
		// Currently only projects are allowed.
		// Format: projects/{project_number}
		resource!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
