package data

#google_iam_testable_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iam_testable_permissions")
	close({
		custom_support_level?: string
		full_resource_name!:   string
		id?:                   string
		permissions?: [...close({
			api_disabled?:         bool
			custom_support_level?: string
			name?:                 string
			stage?:                string
			title?:                string
		})]
		stages?: [...string]
	})
}
