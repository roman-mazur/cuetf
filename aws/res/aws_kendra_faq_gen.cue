package res

import "list"

#aws_kendra_faq: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kendra_faq")
	arn?:           string
	created_at?:    string
	description?:   string
	error_message?: string
	faq_id?:        string
	file_format?:   string
	id?:            string
	index_id!:      string
	language_code?: string
	name!:          string
	role_arn!:      string
	status?:        string
	tags?: [string]: string
	tags_all?: [string]: string
	updated_at?: string
	s3_path?: #s3_path | list.MaxItems(1) & [_, ...] & [...#s3_path]
	timeouts?: #timeouts

	#s3_path: {
		bucket!: string
		key!:    string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
