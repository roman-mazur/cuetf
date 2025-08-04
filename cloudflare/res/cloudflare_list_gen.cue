package res

#cloudflare_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list")
	close({
		account_id!:              string
		created_on?:              string
		description?:             string
		id?:                      string
		kind!:                    string
		modified_on?:             string
		name!:                    string
		num_items?:               number
		num_referencing_filters?: number
	})
}
