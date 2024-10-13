package res

import "list"

#aws_mskconnect_custom_plugin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_mskconnect_custom_plugin")
	arn?:             string
	content_type!:    string
	description?:     string
	id?:              string
	latest_revision?: number
	name!:            string
	state?:           string
	tags?: [string]: string
	tags_all?: [string]: string
	location?: #location | list.MaxItems(1) & [_, ...] & [...#location]
	timeouts?: #timeouts

	#location: {
		s3?: #location.#s3 | list.MaxItems(1) & [_, ...] & [...#location.#s3]

		#s3: {
			bucket_arn!:     string
			file_key!:       string
			object_version?: string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
