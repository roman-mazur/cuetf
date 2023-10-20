package data

#aws_kendra_query_suggestions_block_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kendra_query_suggestions_block_list")
	arn?:                            string
	created_at?:                     string
	description?:                    string
	error_message?:                  string
	file_size_bytes?:                number
	id?:                             string
	index_id:                        string
	item_count?:                     number
	name?:                           string
	query_suggestions_block_list_id: string
	role_arn?:                       string
	source_s3_path?: [...{
		bucket?: string
		key?:    string
	}]
	status?: string
	tags?: [string]: string
	updated_at?: string
}
