package res

google_cloud_support_support_event_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_support_support_event_subscription")
	close({
		timeouts?: #timeouts

		// The time at which the subscription was created.
		create_time?: string

		// The time at which the subscription was deleted.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Reason why subscription is failing. State of subscription
		// must be FAILING in order for this to have a value.
		// Possible values:
		// PERMISSION_DENIED
		// TOPIC_NOT_FOUND
		// OTHER
		failure_reason?: string
		id?:             string

		// Identifier. The resource name of the support event subscription.
		name?: string

		// The organization ID for the support event subscription.
		organization!: string

		// The name of the Pub/Sub topic to publish notifications to.
		// Format: projects/{project}/topics/{topic}
		pub_sub_topic!: string

		// The time at which the subscription will be purged.
		purge_time?: string

		// The state of the subscription.
		// Possible values:
		// WORKING
		// FAILING
		// DELETED
		state?: string

		// The time at which the subscription was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
