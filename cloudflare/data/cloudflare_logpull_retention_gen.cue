package data

#cloudflare_logpull_retention: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_logpull_retention")
	close({
		flag?:    bool
		zone_id!: string
	})
}
