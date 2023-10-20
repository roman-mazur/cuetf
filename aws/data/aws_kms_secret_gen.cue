package data

#aws_kms_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kms_secret")
	id?:     string
	secret?: #secret | [_, ...] & [...#secret]

	#secret: {
		context?: [string]: string
		grant_tokens?: [...string]
		name:    string
		payload: string
	}
}
