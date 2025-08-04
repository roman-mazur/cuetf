package data

#cloudflare_email_routing_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_rule")
	close({
		actions?: matchN(1, [close({
			type?: string
			value?: [...string]
		}), [...close({
			type?: string
			value?: [...string]
		})]])
		enabled?:  bool
		id?:       string
		name?:     string
		priority?: number
		filter?: close({
			enabled?: bool
		})
		rule_identifier?: string
		matchers?: matchN(1, [close({
			field?: string
			type?:  string
			value?: string
		}), [...close({
			field?: string
			type?:  string
			value?: string
		})]])
		zone_id!: string
	})
}
