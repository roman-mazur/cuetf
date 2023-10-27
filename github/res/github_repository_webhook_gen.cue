package res

import "list"

#github_repository_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_webhook")
	active?: bool
	etag?:   string
	events: [...string]
	id?:            string
	name?:          string
	repository:     string
	url?:           string
	configuration?: #configuration | list.MaxItems(1) & [...#configuration]

	#configuration: {
		content_type?: string
		insecure_ssl?: bool
		secret?:       string
		url:           string
	}
}
