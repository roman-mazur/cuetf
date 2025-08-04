package res

import "list"

#aws_api_gateway_documentation_part: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_documentation_part")
	close({
		location?: matchN(1, [#location, list.MaxItems(1) & [_, ...] & [...#location]])
		documentation_part_id?: string
		id?:                    string
		properties!:            string
		region?:                string
		rest_api_id!:           string
	})

	#location: close({
		method?:      string
		name?:        string
		path?:        string
		status_code?: string
		type!:        string
	})
}
