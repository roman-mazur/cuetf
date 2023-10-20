package res

#aws_redshift_event_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_event_subscription")
	arn?:             string
	customer_aws_id?: string
	enabled?:         bool
	event_categories?: [...string]
	id?:           string
	name:          string
	severity?:     string
	sns_topic_arn: string
	source_ids?: [...string]
	source_type?: string
	status?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
