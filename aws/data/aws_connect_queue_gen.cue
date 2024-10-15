package data

#aws_connect_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_queue")
	arn?:                   string
	description?:           string
	hours_of_operation_id?: string
	id?:                    string
	instance_id!:           string
	max_contacts?:          number
	name?:                  string
	outbound_caller_config?: [...{
		outbound_caller_id_name?:      string
		outbound_caller_id_number_id?: string
		outbound_flow_id?:             string
	}]
	queue_id?: string
	status?:   string
	tags?: [string]: string
}
