package res

#google_apigee_flowhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_flowhook")
	close({
		// Flag that specifies whether execution should continue if the
		// flow hook throws an exception. Set to true to continue
		// execution. Set to false to stop execution if the flow hook
		// throws an exception. Defaults to true.
		continue_on_error?: bool

		// Description of the flow hook.
		description?: string

		// The resource ID of the environment.
		environment!: string

		// Where in the API call flow the flow hook is invoked. Must be
		// one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook,
		// or PostTargetFlowHook.
		flow_hook_point!: string
		id?:              string
		timeouts?:        #timeouts

		// The Apigee Organization associated with the environment
		org_id!: string

		// Id of the Sharedflow attaching to a flowhook point.
		sharedflow!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
