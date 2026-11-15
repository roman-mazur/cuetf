package res

elasticstack_kibana_case_field_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_case_field_definition")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The field definition as a YAML string describing a single field (type, label,
		// control, metadata, validation). Known limitation: edits that only reformat
		// the YAML (key order, whitespace) may still plan an in-place update even
		// though the value is semantically unchanged. Limited to 30000 characters.
		definition!: string
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

		// Optional human-readable description of the field's purpose. The API preserves
		// the stored value when the attribute is omitted, so removing it from
		// configuration does not clear it; set it to an empty string (`""`) to clear
		// it.
		description?: string

		// Position of a global field in the case details view, assigned by the server
		// when the field is first made global; it is unset for fields that have never
		// been global.
		display_order?: number

		// The server-assigned UUID of the field definition.
		field_definition_id?: string

		// The composite ID of the field definition: `<space_id>/<field_definition_id>`.
		id?: string

		// When true, the field is rendered in every case for this owner regardless of
		// the template used. A global field cannot be set back to false while it is
		// linked to an active custom field. The API preserves the stored value when
		// the attribute is omitted, so removing it from configuration does not reset
		// it; set it to `false` explicitly.
		is_global?: bool

		// The field name, unique per owner (case-insensitive). Must match the `name`
		// key in `definition`. When omitted, the server extracts it from `definition`.
		// Immutable: changing this forces a new resource.
		name?: string

		// The solution that owns the field definition: `cases` (Stack),
		// `securitySolution`, or `observability`. Changing this forces a new resource.
		owner!: string

		// An identifier for the space. If space_id is not provided, the default space is used.
		space_id?: string
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
