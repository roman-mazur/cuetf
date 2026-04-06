package data

#scaleway_mnq_sns: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_mnq_sns")
	close({
		// Endpoint of the SNS service
		endpoint?: string
		id?:       string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})
}
