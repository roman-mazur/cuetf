package res

#aws_kms_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kms_grant")
	grant_creation_tokens?: [...string]
	grant_id?:         string
	grant_token?:      string
	grantee_principal: string
	id?:               string
	key_id:            string
	name?:             string
	operations: [...string]
	retire_on_delete?:   bool
	retiring_principal?: string
	constraints?:        #constraints | [...#constraints]

	#constraints: {
		encryption_context_equals?: [string]: string
		encryption_context_subset?: [string]: string
	}
}
