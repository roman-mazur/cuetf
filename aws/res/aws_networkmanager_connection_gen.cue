package res

#aws_networkmanager_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_connection")
	arn?:                 string
	connected_device_id!: string
	connected_link_id?:   string
	description?:         string
	device_id!:           string
	global_network_id!:   string
	id?:                  string
	link_id?:             string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
