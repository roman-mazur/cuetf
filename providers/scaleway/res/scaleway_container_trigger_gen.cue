package res

import "list"

#scaleway_container_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_container_trigger")
	close({
		cron?: matchN(1, [#cron, list.MaxItems(1) & [...#cron]])
		destination_config!: matchN(1, [#destination_config, list.MaxItems(1) & [_, ...] & [...#destination_config]])
		nats?: matchN(1, [#nats, list.MaxItems(1) & [...#nats]])
		sqs?: matchN(1, [#sqs, list.MaxItems(1) & [...#sqs]])
		timeouts?: #timeouts

		// The ID of the container to create a trigger for
		container_id!: string

		// The trigger description
		description?: string
		id?:          string

		// The trigger name
		name?: string

		// The region you want to attach the resource to
		region?: string

		// List of tags ["tag1", "tag2", ...] attached to the container
		// trigger
		tags?: [...string]
	})

	#cron: close({
		// Body to send to the container when the trigger is invoked.
		body?: string

		// Additional headers to send to the container when the trigger is
		// invoked.
		headers?: [string]: string

		// UNIX cron schedule to run job (e.g., "* * * * *").
		schedule!: string

		// Timezone for the cron schedule, in tz database format (e.g.,
		// "Europe/Paris").
		timezone!: string
	})

	#destination_config: close({
		// The HTTP method to use when sending the request (e.g., get,
		// post, put, patch, delete).
		http_method!: string

		// The HTTP path to send the request to (e.g.,
		// "/my-webhook-endpoint").
		http_path!: string
	})

	#nats: close({
		// ID of the mnq nats account
		account_id?: string

		// The content of the NATS credentials file that will be used to
		// authenticate with the NATS server and subscribe to the
		// specified subject.
		credentials_file_content!: string

		// Project ID of the project where the mnq nats exists, defaults
		// to provider project_id
		project_id?: string

		// Region where the mnq nats exists, defaults to function's region
		region?: string

		// The URLs of the NATS server (e.g.,
		// "nats://nats.mnq.fr-par.scaleway.com:4222").
		server_urls!: [...string]

		// NATS subject to subscribe to (e.g., "my-subject").
		subject!: string
	})

	#sqs: close({
		// The access key for accessing the SQS queue.
		access_key!: string

		// Endpoint URL to use to access SQS (e.g.,
		// "https://sqs.mnq.fr-par.scaleway.com").
		endpoint!: string

		// Project ID of the project where the mnq sqs exists, defaults to
		// provider project_id
		project_id?: string

		// The URL of the SQS queue to monitor for messages.
		queue_url!: string

		// The region where the SQS queue is hosted, defaults to
		// function's region
		region?: string

		// The secret key for accessing the SQS queue.
		secret_key!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
