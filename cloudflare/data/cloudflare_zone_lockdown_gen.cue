package data

#cloudflare_zone_lockdown: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_lockdown")
	close({
		configurations?: matchN(1, [close({
			target?: string
			value?:  string
		}), [...close({
			target?: string
			value?:  string
		})]])
		created_on?:    string
		description?:   string
		id?:            string
		lock_downs_id?: string
		modified_on?:   string
		paused?:        bool
		filter?: close({
			created_on?:         string
			description?:        string
			description_search?: string
			ip?:                 string
			ip_range_search?:    string
			ip_search?:          string
			modified_on?:        string
			priority?:           number
			uri_search?:         string
		})
		urls?: [...string]
		zone_id!: string
	})
}
