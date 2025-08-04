package res

import "list"

#aws_cognito_resource_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_resource_server")
	close({
		id?:         string
		identifier!: string
		name!:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		scope_identifiers?: [...string]
		user_pool_id!: string
		scope?: matchN(1, [#scope, list.MaxItems(100) & [...#scope]])
	})

	#scope: close({
		scope_description!: string
		scope_name!:        string
	})
}
