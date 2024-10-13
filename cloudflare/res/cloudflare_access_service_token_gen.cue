package res

#cloudflare_access_service_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_access_service_token")
	account_id?:           string
	client_id?:            string
	client_secret?:        string
	duration?:             string
	expires_at?:           string
	id?:                   string
	min_days_for_renewal?: number
	name!:                 string
	zone_id?:              string
}
