package data

#aws_kms_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_kms_secrets")
	close({
		secret!: matchN(1, [#secret, [_, ...] & [...#secret]])
		id?: string
		plaintext?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
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
