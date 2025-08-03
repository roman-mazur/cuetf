package res

import "list"

#aws_s3control_multi_region_access_point_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_multi_region_access_point_policy")
	close({
		account_id?: string
		details?: matchN(1, [#details, list.MaxItems(1) & [_, ...] & [...#details]])
		timeouts?:    #timeouts
		established?: string
		id?:          string
		proposed?:    string
		region?:      string
	})

	#details: close({
		name!:   string
		policy!: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
