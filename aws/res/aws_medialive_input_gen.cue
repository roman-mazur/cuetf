package res

import "list"

#aws_medialive_input: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_input")
	arn?: string
	attached_channels?: [...string]
	id?:          string
	input_class?: string
	input_partner_ids?: [...string]
	input_security_groups?: [...string]
	input_source_type?: string
	name!:              string
	role_arn?:          string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!: string
	destinations?: #destinations | [...#destinations]
	input_devices?: #input_devices | [...#input_devices]
	media_connect_flows?: #media_connect_flows | [...#media_connect_flows]
	sources?: #sources | [...#sources]
	timeouts?: #timeouts
	vpc?: #vpc | list.MaxItems(1) & [...#vpc]

	#destinations: stream_name!: string

	#input_devices: id!: string

	#media_connect_flows: flow_arn!: string

	#sources: {
		password_param!: string
		url!:            string
		username!:       string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc: {
		security_group_ids?: [...string]
		subnet_ids!: [...string]
	}
}
