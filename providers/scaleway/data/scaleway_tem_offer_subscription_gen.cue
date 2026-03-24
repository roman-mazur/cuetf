package data

#scaleway_tem_offer_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_tem_offer_subscription")
	close({
		// Date and time of the end of the offer-subscription commitment
		cancellation_available_at?: string
		id?:                        string

		// Number of emails included in the offer-subscription per month
		included_monthly_emails?: number

		// Max number of custom blocklists that can be associated with the
		// offer-subscription
		max_custom_blocklists_per_domain?: number

		// Max number of dedicated IPs that can be associated with the
		// offer-subscription
		max_dedicated_ips?: number

		// Max number of domains that can be associated with the
		// offer-subscription
		max_domains?: number

		// Max number of webhooks that can be associated with the
		// offer-subscription
		max_webhooks_per_domain?: number

		// Name of the offer
		offer_name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Service Level Agreement percentage of the offer-subscription
		sla?: number

		// Date and time of the subscription
		subscribed_at?: string
	})
}
