package res

import "list"

#aws_s3_bucket_object_lock_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_object_lock_configuration")
	bucket!:                string
	expected_bucket_owner?: string
	id?:                    string
	object_lock_enabled?:   string
	token?:                 string
	rule?: #rule | list.MaxItems(1) & [...#rule]

	#rule: {
		default_retention?: #rule.#default_retention | list.MaxItems(1) & [_, ...] & [...#rule.#default_retention]

		#default_retention: {
			days?:  number
			mode?:  string
			years?: number
		}
	}
}
