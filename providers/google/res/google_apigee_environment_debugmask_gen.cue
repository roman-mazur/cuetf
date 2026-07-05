package res

google_apigee_environment_debugmask: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_environment_debugmask")
	close({
		timeouts?: #timeouts

		// The Apigee environment group associated with the Apigee environment, in the
		// format organizations/{{org_name}}/environments/{{env_name}}.
		env_id!: string

		// List of XPath expressions that specify the XML elements or attributes that
		// the debug mask applies to for fault messages.
		fault_x_paths?: [...string]
		id?: string

		// Name of the debug mask.
		name?: string

		// Map of namespaces to URIs.
		namespaces?: [string]: string

		// List of JSONPath expressions that specify the JSON elements or attributes
		// that the debug mask applies to for request messages.
		request_json_paths?: [...string]

		// List of XPath expressions that specify the XML elements or attributes that
		// the debug mask applies to for request messages.
		request_x_paths?: [...string]

		// List of JSONPath expressions that specify the JSON elements or attributes
		// that the debug mask applies to for response messages.
		response_json_paths?: [...string]

		// List of XPath expressions that specify the XML elements or attributes that
		// the debug mask applies to for response messages.
		response_x_paths?: [...string]

		// List of variables that the debug mask applies to.
		variables?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
