package res

elasticstack_kibana_case_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_case_template")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The template definition as a YAML string: case defaults (`name`, `severity`,
		// `category`, `tags`, `assignees`, `connector`, `settings`) and a `fields`
		// array of inline field definitions and/or `$ref` entries into the field
		// library. Edits that only change whitespace, comments, or mapping-key order
		// are ignored at plan time. Limited to 30000 characters.
		definition_yaml!: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// Optional description of the template, at most 1000 characters. Removing it
		// from configuration clears the stored value; an empty string is kept as an
		// empty string.
		description?: string

		// The number of fields defined in the template, when reported by the API.
		field_count?: number

		// The composite ID of the template: `<space_id>/<template_id>`.
		id?: string

		// Whether this is the default template for its owner, when reported by the API.
		is_default?: bool

		// Whether the template is enabled. Disabled templates are hidden from the case
		// creation flow but remain manageable. The server default of `true` applies
		// only on create; omitting the attribute on a later update keeps the current
		// value, so set it to `true` explicitly to re-enable a disabled template.
		is_enabled?: bool

		// The template name, 1-50 characters, unique per owner (case-insensitive).
		name!: string

		// The solution that owns the template: `cases` (Stack), `securitySolution`, or
		// `observability`. Changing this forces a new resource.
		owner!: string

		// An identifier for the space. If space_id is not provided, the default space is used.
		space_id?: string

		// Optional tags (at most 200, each between 1 and 256 characters). Order and
		// duplicates are preserved. Removing the attribute from configuration clears
		// the stored tags; an empty list is kept as an empty list.
		tags?: [...string]

		// The server-assigned ID of the template, stable across versions.
		template_id?: string

		// The current version of the template. Increments on every successful update.
		template_version?: number

		// The number of times the template has been used to create a case, when reported by the API.
		usage_count?: number
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform provider will point
		// to, this must include the http(s) schema and port number.
		endpoints?: [...string]

		// A map of headers to be sent with each request to Kibana. Custom header values
		// may appear in provider debug logs: Authorization is masked, but arbitrary
		// custom proxy-token headers are not generally redacted.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
