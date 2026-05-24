package data

#google_sourcerepo_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_sourcerepo_repository")
	close({
		// If set to true, skip repository creation if a repository with
		// the same name already exists.
		create_ignore_already_exists?: bool

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Resource name of the repository, of the form '{{repo}}'.
		// The repo name may contain slashes. eg, 'name/with/slash'
		name!:    string
		project?: string

		// How this repository publishes a change in the repository
		// through Cloud Pub/Sub.
		// Keyed by the topic names.
		pubsub_configs?: [...close({
			message_format?:        string
			service_account_email?: string
			topic?:                 string
		})]

		// The disk usage of the repo, in bytes.
		size?: number

		// URL to clone the repository from Google Cloud Source
		// Repositories.
		url?: string
	})
}
