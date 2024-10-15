package res

import "list"

#aws_glue_partition_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_partition_index")
	catalog_id?:    string
	database_name!: string
	id?:            string
	table_name!:    string
	partition_index?: #partition_index | list.MaxItems(1) & [_, ...] & [...#partition_index]
	timeouts?: #timeouts

	#partition_index: {
		index_name?:   string
		index_status?: string
		keys?: [...string]
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
