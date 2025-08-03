package res

#aws_kms_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_grant")
	close({
		grant_creation_tokens?: [...string]
		constraints?: matchN(1, [#constraints, [...#constraints]])
		grant_id?:          string
		grant_token?:       string
		grantee_principal!: string
		id?:                string
		key_id!:            string
		name?:              string
		operations!: [...string]
		region?:             string
		retire_on_delete?:   bool
		retiring_principal?: string
	})

	#constraints: close({
		encryption_context_equals?: [string]: string
		encryption_context_subset?: [string]: string
	})
}
