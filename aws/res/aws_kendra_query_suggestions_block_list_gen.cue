package res

import "list"

#aws_kendra_query_suggestions_block_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_kendra_query_suggestions_block_list")
	close({
		source_s3_path!: matchN(1, [#source_s3_path, list.MaxItems(1) & [_, ...] & [...#source_s3_path]])
		timeouts?:                        #timeouts
		arn?:                             string
		description?:                     string
		id?:                              string
		index_id!:                        string
		name!:                            string
		query_suggestions_block_list_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn!: string
		status?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#source_s3_path: close({
		bucket!: string
		key!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
