package res

#scaleway_mnq_sqs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mnq_sqs")
	close({
		// Endpoint of the SQS service
		endpoint?: string
		id?:       string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})
}
