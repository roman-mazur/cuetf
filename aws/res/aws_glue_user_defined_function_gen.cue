package res

import "list"

#aws_glue_user_defined_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_user_defined_function")
	arn?:           string
	catalog_id?:    string
	class_name:     string
	create_time?:   string
	database_name:  string
	id?:            string
	name:           string
	owner_name:     string
	owner_type:     string
	resource_uris?: #resource_uris | list.MaxItems(1000) & [...#resource_uris]

	#resource_uris: {
		resource_type: string
		uri:           string
	}
}
