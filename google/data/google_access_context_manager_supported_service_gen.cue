package data

#google_access_context_manager_supported_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_access_context_manager_supported_service")
	close({
		// True if the service is available on the restricted VIP.
		// Services on the restricted VIP typically either support VPC
		// Service Controls or are core infrastructure services required
		// for the functioning of Google Cloud.
		available_on_restricted_vip?: bool

		// True if the service is supported with some limitations. Check
		// documentation for details.
		known_limitations?: bool
		id?:                string

		// The name of the service to get information about. The names
		// must be in the same format as used in defining a service
		// perimeter, for example, `storage.googleapis.com`.
		service_name!: string

		// The support stage of the service. Values are `GA`, `PREVIEW`,
		// and `DEPRECATED`.
		service_support_stage?: string

		// The support stage of the service.
		support_stage?: string

		// The list of supported methods for this service.
		supported_methods?: [...close({
			method?:     string
			permission?: string
		})]

		// The name of the supported product, such as 'Cloud Storage'.
		title?: string
	})
}
