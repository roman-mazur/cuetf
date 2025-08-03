package res

import "list"

#aws_kendra_faq: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_faq")
	close({
		arn?:        string
		created_at?: string
		s3_path?: matchN(1, [#s3_path, list.MaxItems(1) & [_, ...] & [...#s3_path]])
		timeouts?:      #timeouts
		description?:   string
		error_message?: string
		faq_id?:        string
		file_format?:   string
		id?:            string
		index_id!:      string
		language_code?: string
		name!:          string
		region?:        string
		role_arn!:      string
		status?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
	})

	#s3_path: close({
		bucket!: string
		key!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
