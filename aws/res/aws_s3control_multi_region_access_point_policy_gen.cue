package res

import "list"

#aws_s3control_multi_region_access_point_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3control_multi_region_access_point_policy")
	account_id?:  string
	established?: string
	id?:          string
	proposed?:    string
	details?:     #details | list.MaxItems(1) & [_, ...] & [...#details]
	timeouts?:    #timeouts

	#details: {
		name:   string
		policy: string
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
