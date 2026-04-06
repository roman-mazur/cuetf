package res

#scaleway_mnq_sns_topic_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mnq_sns_topic_subscription")
	close({
		// SNS access key
		access_key!: string

		// ARN of the topic, should have format
		// 'arn:scw:sns:project-${project_id}:${topic_name}:${subscription_id}'
		arn?: string

		// Endpoint of the subscription
		endpoint?: string
		id?:       string

		// The project_id you want to attach the resource to
		project_id?: string

		// Protocol of the SNS Topic Subscription.
		protocol!: string

		// JSON Redrive policy
		redrive_policy?: bool

		// The region you want to attach the resource to
		region?: string

		// SNS secret key
		secret_key!: string

		// SNS endpoint
		sns_endpoint?: string

		// ARN of the topic
		topic_arn?: string

		// ID of the topic
		topic_id?: string
	})
}
