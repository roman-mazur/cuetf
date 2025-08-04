package res

#cloudflare_notification_policy_webhooks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_notification_policy_webhooks")
	close({
		// The account id
		account_id!: string

		// Timestamp of when the webhook destination was created.
		created_at?: string

		// UUID
		id?: string

		// Timestamp of the last time an attempt to dispatch a
		// notification to this webhook failed.
		last_failure?: string

		// Timestamp of the last time Cloudflare was able to successfully
		// dispatch a notification using this webhook.
		last_success?: string

		// The name of the webhook destination. This will be included in
		// the request body when you receive a webhook notification.
		name!: string

		// Optional secret that will be passed in the `cf-webhook-auth`
		// header when dispatching generic webhook notifications or
		// formatted for supported destinations. Secrets are not returned
		// in any API response body.
		secret?: string

		// Type of webhook endpoint.
		// Available values: "slack", "generic", "gchat".
		type?: string

		// The POST endpoint to call when dispatching a notification.
		url!: string
	})
}
