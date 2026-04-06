package res

#scaleway_mnq_sns_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mnq_sns_topic")
	close({
		// SNS access key
		access_key!: string

		// ARN of the topic, should have format
		// 'arn:scw:sns:project-${project_id}:${topic_name}'
		arn?: string

		// Specifies whether to enable content-based deduplication.
		content_based_deduplication?: bool

		// Whether the topic is a FIFO topic. If true, the topic name must
		// end with .fifo
		fifo_topic?: bool
		id?:         string

		// Name of the SNS Topic.
		name?: string

		// Creates a unique name beginning with the specified prefix.
		name_prefix?: string

		// Owner of the SNS topic, should have format
		// 'project-${project_id}'
		owner?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// SNS secret key
		secret_key!: string

		// SNS endpoint
		sns_endpoint?: string
	})
}
