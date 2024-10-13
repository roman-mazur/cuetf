package res

import "list"

#aws_kendra_query_suggestions_block_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kendra_query_suggestions_block_list")
	arn?:                             string
	description?:                     string
	id?:                              string
	index_id!:                        string
	name!:                            string
	query_suggestions_block_list_id?: string
	role_arn!:                        string
	status?:                          string
	tags?: [string]: string
	tags_all?: [string]: string
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
