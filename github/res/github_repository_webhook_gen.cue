package res

import "list"

#github_repository_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_webhook")
	close({
		// Indicate if the webhook should receive events. Defaults to
		// 'true'.
		active?: bool
		etag?:   string

		// A list of events which should trigger the webhook
		events!: [...string]
		id?: string

		// The repository of the webhook.
		repository!: string
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])

		// Configuration block for the webhook
		url?: string
	})

	#configuration: close({
		// The content type for the payload. Valid values are either
		// 'form' or 'json'.
		content_type?: string

		// Insecure SSL boolean toggle. Defaults to 'false'.
		insecure_ssl?: bool

		// The shared secret for the webhook
		secret?: string

		// The URL of the webhook.
		url!: string
	})
}
