package res

#google_sourcerepo_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_sourcerepo_repository")
	close({
		// If set to true, skip repository creation if a repository with
		// the same name already exists.
		create_ignore_already_exists?: bool

		// Resource name of the repository, of the form '{{repo}}'.
		// The repo name may contain slashes. eg, 'name/with/slash'
		name!: string
		id?:   string

		// The disk usage of the repo, in bytes.
		size?: number

		// URL to clone the repository from Google Cloud Source
		// Repositories.
		url?:     string
		project?: string
		pubsub_configs?: matchN(1, [#pubsub_configs, [...#pubsub_configs]])
		timeouts?: #timeouts
	})

	#pubsub_configs: close({
		// The format of the Cloud Pub/Sub messages.
		// - PROTOBUF: The message payload is a serialized protocol buffer
		// of SourceRepoEvent.
		// - JSON: The message payload is a JSON string of
		// SourceRepoEvent. Possible values: ["PROTOBUF", "JSON"]
		message_format!: string

		// Email address of the service account used for publishing Cloud
		// Pub/Sub messages.
		// This service account needs to be in the same project as the
		// PubsubConfig. When added,
		// the caller needs to have iam.serviceAccounts.actAs permission
		// on this service account.
		// If unspecified, it defaults to the compute engine default
		// service account.
		service_account_email?: string
		topic!:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
