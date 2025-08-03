package res

import "list"

#aws_glue_user_defined_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_user_defined_function")
	close({
		arn?: string
		resource_uris?: matchN(1, [#resource_uris, list.MaxItems(1000) & [...#resource_uris]])
		catalog_id?:    string
		class_name!:    string
		create_time?:   string
		database_name!: string
		id?:            string
		name!:          string
		owner_name!:    string
		owner_type!:    string
		region?:        string
	})

	#resource_uris: close({
		resource_type!: string
		uri!:           string
	})
}
