package data

#aws_kms_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_secret")
	close({
		id?:     string
		region?: string
		secret?: matchN(1, [#secret, [_, ...] & [...#secret]])
	})

	#secret: close({
		context?: [string]: string
		grant_tokens?: [...string]
		name!:    string
		payload!: string
	})
}
