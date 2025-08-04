package data

#aws_kendra_query_suggestions_block_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_query_suggestions_block_list")
	close({
		arn?:             string
		created_at?:      string
		description?:     string
		error_message?:   string
		file_size_bytes?: number
		id?:              string
		index_id!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		item_count?:                      number
		name?:                            string
		query_suggestions_block_list_id!: string
		role_arn?:                        string
		source_s3_path?: [...close({
			bucket?: string
			key?:    string
		})]
		status?: string
		tags?: [string]: string
		updated_at?: string
	})
}
