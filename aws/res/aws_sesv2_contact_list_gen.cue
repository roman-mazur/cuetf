package res

#aws_sesv2_contact_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_contact_list")
	arn?:                    string
	contact_list_name:       string
	created_timestamp?:      string
	description?:            string
	id?:                     string
	last_updated_timestamp?: string
	tags?: [string]: string
	tags_all?: [string]: string
	topic?: #topic | [...#topic]

	#topic: {
		default_subscription_status: string
		description?:                string
		display_name:                string
		topic_name:                  string
	}
}
