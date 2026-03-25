package res

#google_kms_project_autokey_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_kms_project_autokey_config")
	close({
		timeouts?: #timeouts

		// The etag of the AutokeyConfig for optimistic concurrency
		// control.
		etag?: string
		id?:   string

		// How Autokey determines which project to use when provisioning
		// CMEK keys. Possible values: ["RESOURCE_PROJECT", "DISABLED"]
		key_project_resolution_mode?: string
		project?:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
