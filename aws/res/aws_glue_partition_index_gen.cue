package res

import "list"

#aws_glue_partition_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_partition_index")
	close({
		catalog_id?: string
		partition_index?: matchN(1, [#partition_index, list.MaxItems(1) & [_, ...] & [...#partition_index]])
		timeouts?:      #timeouts
		database_name!: string
		id?:            string
		region?:        string
		table_name!:    string
	})

	#partition_index: close({
		index_name?:   string
		index_status?: string
		keys?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
