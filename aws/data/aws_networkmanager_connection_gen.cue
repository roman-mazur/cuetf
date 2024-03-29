package data

#aws_networkmanager_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_connection")
	arn?:                 string
	connected_device_id?: string
	connected_link_id?:   string
	connection_id:        string
	description?:         string
	device_id?:           string
	global_network_id:    string
	id?:                  string
	link_id?:             string
	tags?: [string]: string
}
