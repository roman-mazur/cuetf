package res

import "list"

#aws_ivschat_room: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ivschat_room")
	arn?: string
	id?:  string
	logging_configuration_identifiers?: [...string]
	maximum_message_length?:          number
	maximum_message_rate_per_second?: number
	name?:                            string
	tags?: [string]: string
	tags_all?: [string]: string
	message_review_handler?: #message_review_handler | list.MaxItems(1) & [...#message_review_handler]
	timeouts?:               #timeouts

	#message_review_handler: {
		fallback_result?: string
		uri?:             string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
