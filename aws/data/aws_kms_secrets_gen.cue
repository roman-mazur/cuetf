package data

#aws_kms_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_secrets")
	close({
		secret?: matchN(1, [#secret, [_, ...] & [...#secret]])
		id?: string
		plaintext?: [string]: string
		region?: string
	})

	#secret: close({
		context?: [string]: string
		encryption_algorithm?: string
		grant_tokens?: [...string]
		key_id?:  string
		name!:    string
		payload!: string
	})
}
