package res

import "list"

#aws_kendra_thesaurus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kendra_thesaurus")
	arn?:         string
	description?: string
	id?:          string
	index_id!:    string
	name!:        string
	role_arn!:    string
	status?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	thesaurus_id?: string
	source_s3_path?: #source_s3_path | list.MaxItems(1) & [_, ...] & [...#source_s3_path]
	timeouts?: #timeouts

	#source_s3_path: {
		bucket!: string
		key!:    string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
