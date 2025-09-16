package res

#cloudflare_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_firewall_rule")
	close({
		// The action to perform when the threshold of matched traffic
		// within the configured period is exceeded.
		action!: close({
			// A custom content type and reponse to return when the threshold
			// is exceeded. The custom response configured in this object
			// will override the custom error for the zone. This object is
			// optional.
			// Notes: If you omit this object, Cloudflare will use the default
			// HTML error page. If "mode" is "challenge",
			// "managed_challenge", or "js_challenge", Cloudflare will use
			// the zone challenge pages and you should not provide the
			// "response" object.
			response?: close({
				// The response body to return. The value must conform to the
				// configured content type.
				body?: string

				// The content type of the body. Must be one of the following:
				// `text/plain`, `text/xml`, or `application/json`.
				content_type?: string
			})

			// The action to perform.
			// Available values: "simulate", "ban", "challenge",
			// "js_challenge", "managed_challenge".
			mode?: string

			// The time in seconds during which Cloudflare will perform the
			// mitigation action. Must be an integer value greater than or
			// equal to the period.
			// Notes: If "mode" is "challenge", "managed_challenge", or
			// "js_challenge", Cloudflare will use the zone's Challenge
			// Passage time and you should not provide this value.
			timeout?: number
		})

		// An informative summary of the firewall rule.
		description?: string

		// The unique identifier of the firewall rule.
		id?: string

		// When true, indicates that the firewall rule is currently
		// paused.
		paused?: bool

		// The priority of the rule. Optional value used to define the
		// processing order. A lower number indicates a higher priority.
		// If not provided, rules with a defined priority will be
		// processed before rules without a priority.
		priority?: number
		products?: [...string]

		// A short reference tag. Allows you to select related firewall
		// rules.
		ref?: string

		// Defines an identifier.
		zone_id!: string
		filter!: close({
			// An informative summary of the filter.
			description?: string

			// The filter expression. For more information, refer to
			// [Expressions](https://developers.cloudflare.com/ruleset-engine/rules-language/expressions/).
			expression?: string

			// The unique identifier of the filter.
			id?: string

			// When true, indicates that the filter is currently paused.
			paused?: bool

			// A short reference tag. Allows you to select related filters.
			ref?: string
		})
	})
}
