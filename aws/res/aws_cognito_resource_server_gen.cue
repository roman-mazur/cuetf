package res

import "list"

#aws_cognito_resource_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_resource_server")
	close({
		scope?: matchN(1, [#scope, list.MaxItems(100) & [...#scope]])
		id?:         string
		identifier!: string
		name!:       string
		region?:     string
		scope_identifiers?: [...string]
		user_pool_id!: string
	})

	#scope: close({
		scope_description!: string
		scope_name!:        string
	})
}
