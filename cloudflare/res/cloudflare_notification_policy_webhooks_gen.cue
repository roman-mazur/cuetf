package res

#cloudflare_notification_policy_webhooks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_notification_policy_webhooks")
	account_id!:   string
	created_at?:   string
	id?:           string
	last_failure?: string
	last_success?: string
	name!:         string
	secret?:       string
	type?:         string
	url?:          string
}
