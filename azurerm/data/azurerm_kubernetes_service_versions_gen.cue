package data

#azurerm_kubernetes_service_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kubernetes_service_versions")
	close({
		timeouts?:        #timeouts
		default_version?: string
		id?:              string
		include_preview?: bool
		latest_version?:  string
		location!:        string
		version_prefix?:  string
		versions?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
