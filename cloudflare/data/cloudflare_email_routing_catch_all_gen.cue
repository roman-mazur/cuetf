package data

#cloudflare_email_routing_catch_all: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_catch_all")
	close({
		actions?: matchN(1, [close({
			type?: string
			value?: [...string]
		}), [...close({
			type?: string
			value?: [...string]
		})]])
		enabled?: bool
		id?:      string
		matchers?: matchN(1, [close({
			type?: string
		}), [...close({
			type?: string
		})]])
		name?:    string
		zone_id!: string
	})
}
