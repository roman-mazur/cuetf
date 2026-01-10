package res

#google_service_directory_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_directory_namespace")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Resource labels associated with this Namespace. No more than 64
		// user
		// labels can be associated with a given resource. Label keys and
		// values can
		// be no longer than 63 characters.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location for the Namespace.
		location!: string

		// The resource name for the namespace
		// in the format 'projects/*/locations/*/namespaces/*'.
		name?: string

		// The Resource ID must be 1-63 characters long, including digits,
		// lowercase letters or the hyphen character.
		namespace_id!: string
		project?:      string
		timeouts?:     #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
