package res

import "list"

google_pubsub_lite_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_pubsub_lite_subscription")
	close({
		delivery_config?: matchN(1, [#delivery_config, list.MaxItems(1) & [...#delivery_config]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Name of the subscription.
		name!: string

		// The region of the pubsub lite topic.
		region?:  string
		project?: string

		// A reference to a Topic resource.
		topic!: string

		// The zone of the pubsub lite topic.
		zone?: string
	})

	#delivery_config: close({
		// When this subscription should send messages to subscribers relative to
		// messages persistence in storage. Possible values: ["DELIVER_IMMEDIATELY",
		// "DELIVER_AFTER_STORED", "DELIVERY_REQUIREMENT_UNSPECIFIED"]
		delivery_requirement!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
