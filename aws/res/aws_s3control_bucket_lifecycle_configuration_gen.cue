package res

import "list"

#aws_s3control_bucket_lifecycle_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_bucket_lifecycle_configuration")
	bucket!: string
	id?:     string
	rule?: #rule | [_, ...] & [...#rule]

	#rule: {
		id!:     string
		status?: string
		abort_incomplete_multipart_upload?: #rule.#abort_incomplete_multipart_upload | list.MaxItems(1) & [...#rule.#abort_incomplete_multipart_upload]
		expiration?: #rule.#expiration | list.MaxItems(1) & [...#rule.#expiration]
		filter?: #rule.#filter | list.MaxItems(1) & [...#rule.#filter]

		#abort_incomplete_multipart_upload: days_after_initiation!: number

		#expiration: {
			date?:                         string
			days?:                         number
			expired_object_delete_marker?: bool
		}

		#filter: {
			prefix?: string
			tags?: [string]: string
		}
	}
}
