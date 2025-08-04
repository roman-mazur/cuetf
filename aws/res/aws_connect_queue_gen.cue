package res

import "list"

#aws_connect_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_queue")
	close({
		arn?:                   string
		description?:           string
		hours_of_operation_id!: string
		id?:                    string
		instance_id!:           string
		max_contacts?:          number
		name!:                  string
		queue_id?:              string
		outbound_caller_config?: matchN(1, [#outbound_caller_config, list.MaxItems(1) & [...#outbound_caller_config]])
		quick_connect_ids?: [...string]
		region?: string
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#outbound_caller_config: close({
		outbound_caller_id_name?:      string
		outbound_caller_id_number_id?: string
		outbound_flow_id?:             string
	})
}
