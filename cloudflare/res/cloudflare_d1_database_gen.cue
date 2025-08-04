package res

#cloudflare_d1_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_d1_database")
	close({
		account_id!: string
		created_at?: string
		file_size?:  number
		read_replication?: close({
			mode!: string
		})
		id?:                    string
		name!:                  string
		num_tables?:            number
		primary_location_hint?: string
		uuid?:                  string
		version?:               string
	})
}
