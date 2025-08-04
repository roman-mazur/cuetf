package res

#cloudflare_zone_lockdown: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_lockdown")
	close({
		configurations!: matchN(1, [close({
			target?: string
			value?:  string
		}), [...close({
			target?: string
			value?:  string
		})]])
		created_on?:  string
		description?: string
		id?:          string
		modified_on?: string
		paused?:      bool
		priority?:    number
		urls!: [...string]
		zone_id!: string
	})
}
