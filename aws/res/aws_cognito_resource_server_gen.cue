package res

import "list"

#aws_cognito_resource_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_resource_server")
	id?:         string
	identifier!: string
	name!:       string
	scope_identifiers?: [...string]
	user_pool_id!: string
	scope?: #scope | list.MaxItems(100) & [...#scope]

	#scope: {
		scope_description!: string
		scope_name!:        string
	}
}
