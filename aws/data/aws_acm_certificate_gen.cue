package data

#aws_acm_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acm_certificate")
	close({
		arn?:               string
		certificate?:       string
		certificate_chain?: string
		domain?:            string
		id?:                string
		key_types?: [...string]
		most_recent?: bool
		region?:      string
		status?:      string
		statuses?: [...string]
		tags?: [string]: string
		types?: [...string]
	})
}
