package data

#google_datastream_static_ips: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_datastream_static_ips")
	close({
		id?:       string
		location!: string
		project?:  string
		static_ips?: [...string]
	})
}
