package res

import "list"

#aws_networkmanager_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_device")
	arn?:               string
	description?:       string
	global_network_id!: string
	id?:                string
	model?:             string
	serial_number?:     string
	site_id?:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	type?:   string
	vendor?: string
	aws_location?: #aws_location | list.MaxItems(1) & [...#aws_location]
	location?: #location | list.MaxItems(1) & [...#location]
	timeouts?: #timeouts

	#aws_location: {
		subnet_arn?: string
		zone?:       string
	}

	#location: {
		address?:   string
		latitude?:  string
		longitude?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
