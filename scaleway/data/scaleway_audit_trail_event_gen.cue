package data

#scaleway_audit_trail_event: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_audit_trail_event")
	close({
		// List of Audit Trail events
		events?: [...close({
			id?:              string
			locality?:        string
			method_name?:     string
			organization_id?: string
			principal_id?:    string
			product_name?:    string
			project_id?:      string
			recorded_at?:     string
			request_body?:    string
			request_id?:      string
			resources?: [...close({
				id?:   string
				name?: string
				type?: string
			})]
			service_name?: string
			source_ip?:    string
			status_code?:  number
			user_agent?:   string
		})]
		id?: string

		// Name of the method of the API call performed
		method_name?: string

		// Defines the order in which events are returned. Default value:
		// recorded_at_desc
		order_by?: string

		// ID of the organization containing the Audit Trail events.
		organization_id?: string

		// ID of the User or IAM application at the origin of the event
		principal_id?: string

		// Scaleway product associated with the listed events in a
		// hyphenated format
		product_name?: string

		// ID of the project containing the Audit Trail events.
		project_id?: string

		// The `recorded_after` parameter defines the earliest timestamp
		// from which Audit Trail events are retrieved. Returns `one hour
		// ago` by default (Format ISO 8601)
		recorded_after?: string

		// The `recorded_before` parameter defines the latest timestamp up
		// to which Audit Trail events are retrieved. Must be later than
		// recorded_after. Returns `now` by default (Format ISO 8601)
		recorded_before?: string

		// The region you want to attach the resource to
		region?: string

		// ID of the Scaleway resource associated with the listed events
		resource_id?: string

		// Type of the scaleway resources associated with the listed
		// events
		resource_type?: string

		// Name of the service of the API call performed
		service_name?: string

		// IP address at the origin of the event
		source_ip?: string

		// HTTP status code of the request
		status?: number
	})
}
