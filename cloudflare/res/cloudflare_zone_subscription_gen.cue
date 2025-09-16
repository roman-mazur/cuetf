package res

#cloudflare_zone_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_subscription")
	close({
		// The monetary unit in which pricing information is displayed.
		currency?: string

		// The end of the current period and also when the next billing is
		// due.
		current_period_end?: string

		// When the current billing period started. May match
		// initial_period_start if this is the first period.
		current_period_start?: string

		// How often the subscription is renewed automatically.
		// Available values: "weekly", "monthly", "quarterly", "yearly".
		frequency?: string

		// Subscription identifier tag.
		id?: string

		// The rate plan applied to the subscription.
		rate_plan?: close({
			// The currency applied to the rate plan subscription.
			currency?: string

			// Whether this rate plan is managed externally from Cloudflare.
			externally_managed?: bool

			// The ID of the rate plan.
			// Available values: "free", "lite", "pro", "pro_plus",
			// "business", "enterprise", "partners_free", "partners_pro",
			// "partners_business", "partners_enterprise".
			id?: string

			// Whether a rate plan is enterprise-based (or newly adopted term
			// contract).
			is_contract?: bool

			// The full name of the rate plan.
			public_name?: string

			// The scope that this rate plan applies to.
			scope?: string

			// The list of sets this rate plan applies to.
			sets?: [...string]
		})

		// The price of the subscription that will be billed, in US
		// dollars.
		price?: number

		// The state that the subscription is in.
		// Available values: "Trial", "Provisioned", "Paid",
		// "AwaitingPayment", "Cancelled", "Failed", "Expired".
		state?: string

		// Subscription identifier tag.
		zone_id!: string
	})
}
