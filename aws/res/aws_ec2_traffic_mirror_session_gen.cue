package res

#aws_ec2_traffic_mirror_session: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_traffic_mirror_session")
	arn?:                 string
	description?:         string
	id?:                  string
	network_interface_id: string
	owner_id?:            string
	packet_length?:       number
	session_number:       number
	tags?: [string]: string
	tags_all?: [string]: string
	traffic_mirror_filter_id: string
	traffic_mirror_target_id: string
	virtual_network_id?:      number
}
