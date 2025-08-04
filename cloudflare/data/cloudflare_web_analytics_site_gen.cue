package data

#cloudflare_web_analytics_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_web_analytics_site")
	close({
		account_id!:   string
		auto_install?: bool
		created?:      string
		id?:           string
		site_id?:      string
		filter?: close({
			order_by?: string
		})
		rules?: matchN(1, [close({
			created?:   string
			host?:      string
			id?:        string
			inclusive?: bool
			is_paused?: bool
			paths?: [...string]
			priority?: number
		}), [...close({
			created?:   string
			host?:      string
			id?:        string
			inclusive?: bool
			is_paused?: bool
			paths?: [...string]
			priority?: number
		})]])
		site_tag?: string
		ruleset?: close({
			enabled?:   bool
			id?:        string
			zone_name?: string
			zone_tag?:  string
		})
		site_token?: string
		snippet?:    string
	})
}
