package cuetf

// #ProviderSchemaFile defines the structure of a file obtained via running
//		terraform providers schema -json
#ProviderSchemaFile: {
	provider_schemas: [string]: #ProviderSchema
}

// #TfJson defines the structure of a .tf.json file.
#TfJson: {
	terraform?: {
		required_providers?: [string]: _
		...
	}
	provider?: [string]: _
	resource?: [string]: _
	data?: [string]:     _
}

// MetaArgs represent meta arguments that can be added to most of the resources.
// See https://developer.hashicorp.com/terraform/language/meta-arguments
// TODO: Should be generated for a particular terraform version.
MetaArgs: {
	depends_on?: [#TfExpr, ...#TfExpr]
	count?: uint

	// See https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle
	lifecycle?: {
		action_trigger?: {
			#event: "before_create" | "after_create" | "before_update" | "after_update"
			events: [#event, ...#event]
			actions: [#TfExpr, ...#TfExpr]
			condition?: #TfExpr
		}

		create_before_destroy?: bool
		prevent_destroy?:       bool

		ignore_changes?: [string, ...string]
		replace_triggered_by?: [#TfExpr, ...#TfExpr]

		#condition: {
			condition:     #TfExpr
			error_message: string
		}
		precondition?:  #condition
		postcondition?: #condition

		destroy?: bool // Limited to "remove" blocks.
	}

	// TODO: Review how to handle provider, providers, and for_each.
}

// #TfExpr represents a terraform expression in a JSON document.
#TfExpr: =~"^\\$\\{.+\\}$"
