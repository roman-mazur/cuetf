package res

import "list"

#github_organization_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_webhook")
	active?: bool
	etag?:   string
	events!: [...string]
	id?:  string
	url?: string
	configuration?: #configuration | list.MaxItems(1) & [...#configuration]

	#configuration: {
		content_type?: string
		insecure_ssl?: bool
		secret?:       string
		url!:          string
	}
}
