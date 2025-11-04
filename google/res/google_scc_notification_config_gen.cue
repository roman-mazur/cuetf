package res

import "list"

#google_scc_notification_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_scc_notification_config")
	close({
		// This must be unique within the organization.
		config_id!: string

		// The description of the notification config (max of 1024
		// characters).
		description?: string

		// The resource name of this notification config, in the format
		// 'organizations/{{organization}}/notificationConfigs/{{config_id}}'.
		name?: string

		// The organization whose Cloud Security Command Center the
		// Notification
		// Config lives in.
		organization!: string

		// The Pub/Sub topic to send notifications to. Its format is
		// "projects/[project_id]/topics/[topic]".
		pubsub_topic!: string
		id?:           string
		streaming_config!: matchN(1, [#streaming_config, list.MaxItems(1) & [_, ...] & [...#streaming_config]])
		timeouts?: #timeouts

		// The service account that needs "pubsub.topics.publish"
		// permission to
		// publish to the Pub/Sub topic.
		service_account?: string
	})

	#streaming_config: close({
		// Expression that defines the filter to apply across
		// create/update
		// events of assets or findings as specified by the event type.
		// The
		// expression is a list of zero or more restrictions combined via
		// logical operators AND and OR. Parentheses are supported, and OR
		// has higher precedence than AND.
		//
		// Restrictions have the form <field> <operator> <value> and may
		// have
		// a - character in front of them to indicate negation. The fields
		// map to those defined in the corresponding resource.
		//
		// The supported operators are:
		//
		// * = for all value types.
		// * >, <, >=, <= for integer values.
		// * :, meaning substring matching, for strings.
		//
		// The supported value types are:
		//
		// * string literals in quotes.
		// * integer literals without quotes.
		// * boolean literals true and false without quotes.
		//
		// See
		// [Filtering
		// notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
		// for information on how to write a filter.
		filter!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
