package data

#aws_acm_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_acm_certificate")
	arn?:               string
	certificate?:       string
	certificate_chain?: string
	domain?:            string
	id?:                string
	key_types?: [...string]
	most_recent?: bool
	status?:      string
	statuses?: [...string]
	tags?: [string]: string
	types?: [...string]
}
