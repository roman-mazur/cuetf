package res

import "list"

#aws_glue_user_defined_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_user_defined_function")
	close({
		arn?:        string
		catalog_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		class_name!:    string
		create_time?:   string
		database_name!: string
		id?:            string
		resource_uris?: matchN(1, [#resource_uris, list.MaxItems(1000) & [...#resource_uris]])
		name!:       string
		owner_name!: string
		owner_type!: string
	})

	#resource_uris: close({
		resource_type!: string
		uri!:           string
	})
}
