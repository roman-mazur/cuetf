package data

#cloudflare_logpush_dataset_field: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_logpush_dataset_field")
	close({
		account_id?: string
		dataset_id?: string
		zone_id?:    string
	})
}
