package res

#aws_kms_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_kms_grant")
	close({
		grant_creation_tokens?: [...string]
		grant_id?:          string
		grant_token?:       string
		grantee_principal!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		constraints?: matchN(1, [#constraints, [...#constraints]])
		key_id!: string
		name?:   string
		operations!: [...string]
		retire_on_delete?:   bool
		retiring_principal?: string
	})

	#constraints: close({
		encryption_context_equals?: [string]: string
		encryption_context_subset?: [string]: string
	})
}
