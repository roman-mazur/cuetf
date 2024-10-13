package data

#aws_kms_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kms_secrets")
	id?: string
	plaintext?: [string]: string
	secret?: #secret | [_, ...] & [...#secret]

	#secret: {
		context?: [string]: string
		encryption_algorithm?: string
		grant_tokens?: [...string]
		key_id?:  string
		name!:    string
		payload!: string
	}
}
