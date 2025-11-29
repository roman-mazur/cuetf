package data

#google_compute_instance_serial_port: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_instance_serial_port")
	close({
		contents?: string
		id?:       string
		instance!: string
		port!:     number
		project?:  string
		zone?:     string
	})
}
