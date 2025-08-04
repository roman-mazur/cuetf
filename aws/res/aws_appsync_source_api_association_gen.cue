package res

#aws_appsync_source_api_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_source_api_association")
	close({
		arn?:            string
		association_id?: string
		description?:    string
		id?:             string
		merged_api_arn?: string
		merged_api_id?:  string
		region?:         string
		timeouts?:       #timeouts
		source_api_arn?: string
		source_api_association_config?: [...close({
			merge_type?: string
		})]
		source_api_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
