package res

import "list"

#aws_ivschat_room: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ivschat_room")
	close({
		arn?: string
		id?:  string
		logging_configuration_identifiers?: [...string]
		maximum_message_length?: number
		message_review_handler?: matchN(1, [#message_review_handler, list.MaxItems(1) & [...#message_review_handler]])
		maximum_message_rate_per_second?: number
		name?:                            string
		region?:                          string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#message_review_handler: close({
		fallback_result?: string
		uri?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
