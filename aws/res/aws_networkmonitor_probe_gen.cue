package res

#aws_networkmonitor_probe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmonitor_probe")
	address_family?:   string
	arn?:              string
	destination!:      string
	destination_port?: number
	id?:               string
	monitor_name!:     string
	packet_size?:      number
	probe_id?:         string
	protocol!:         string
	source_arn!:       string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?: string
}
