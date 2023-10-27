package data

#github_rest_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_rest_api")
	body?: [string]: string
	code?:    number
	endpoint: string
	headers?: [string]: string
	id?:     string
	status?: string
}
