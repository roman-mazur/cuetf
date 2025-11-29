package data

#google_sql_ca_certs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_sql_ca_certs")
	close({
		active_version?: string
		certs?: [...close({
			cert?:             string
			common_name?:      string
			create_time?:      string
			expiration_time?:  string
			sha1_fingerprint?: string
		})]
		id?:       string
		instance!: string
		project?:  string
	})
}
