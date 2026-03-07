package res

import "list"

#aws_ivschat_room: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ivschat_room")
	close({
		message_review_handler?: matchN(1, [#message_review_handler, list.MaxItems(1) & [...#message_review_handler]])
		timeouts?: #timeouts
		arn?:      string
		id?:       string
		logging_configuration_identifiers?: [...string]
		maximum_message_length?:          number
		maximum_message_rate_per_second?: number
		name?:                            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
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
