package data

#google_dns_record_sets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_dns_record_sets")
	close({
		id?:           string
		managed_zone!: string
		name?:         string
		project?:      string
		rrsets?: [...close({
			name?: string
			rrdatas?: [...string]
			ttl?:  number
			type?: string
		})]
		type?: string
	})
}
