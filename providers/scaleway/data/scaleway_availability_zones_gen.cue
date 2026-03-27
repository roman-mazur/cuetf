package data

#scaleway_availability_zones: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_availability_zones")
	close({
		timeouts?: #timeouts
		id?:       string

		// Region is represented as a Geographical area such as France
		region?: string

		// Availability Zones (AZ)
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
