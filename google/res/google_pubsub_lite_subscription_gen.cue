package res

import "list"

#google_pubsub_lite_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_pubsub_lite_subscription")
	close({
		id?: string

		// Name of the subscription.
		name!: string

		// The region of the pubsub lite topic.
		region?: string

		// A reference to a Topic resource.
		topic!:   string
		project?: string

		// The zone of the pubsub lite topic.
		zone?: string
		delivery_config?: matchN(1, [#delivery_config, list.MaxItems(1) & [...#delivery_config]])
		timeouts?: #timeouts
	})

	#delivery_config: close({
		// When this subscription should send messages to subscribers
		// relative to messages persistence in storage. Possible values:
		// ["DELIVER_IMMEDIATELY", "DELIVER_AFTER_STORED",
		// "DELIVERY_REQUIREMENT_UNSPECIFIED"]
		delivery_requirement!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
