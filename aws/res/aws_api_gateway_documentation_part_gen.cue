package res

import "list"

#aws_api_gateway_documentation_part: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_documentation_part")
	id?:         string
	properties:  string
	rest_api_id: string
	location?:   #location | list.MaxItems(1) & [_, ...] & [...#location]

	#location: {
		method?:      string
		name?:        string
		path?:        string
		status_code?: string
		type:         string
	}
}
