package res

import "list"

#aws_connect_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_queue")
	arn?:                   string
	description?:           string
	hours_of_operation_id!: string
	id?:                    string
	instance_id!:           string
	max_contacts?:          number
	name!:                  string
	queue_id?:              string
	quick_connect_ids?: [...string]
	status?: string
	tags?: [string]: string
	tags_all?: [string]: string
	outbound_caller_config?: #outbound_caller_config | list.MaxItems(1) & [...#outbound_caller_config]

	#outbound_caller_config: {
		outbound_caller_id_name?:      string
		outbound_caller_id_number_id?: string
		outbound_flow_id?:             string
	}
}
