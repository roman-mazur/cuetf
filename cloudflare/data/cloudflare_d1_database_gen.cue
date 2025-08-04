package data

#cloudflare_d1_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_d1_database")
	close({
		filter?: close({
			name?: string
		})
		account_id!: string
		created_at?: string
		read_replication?: close({
			mode?: string
		})
		database_id?: string
		file_size?:   number
		id?:          string
		name?:        string
		num_tables?:  number
		uuid?:        string
		version?:     string
	})
}
