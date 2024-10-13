package res

import "list"

#aws_networkmanager_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_link")
	arn?:               string
	description?:       string
	global_network_id!: string
	id?:                string
	provider_name?:     string
	site_id!:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	type?: string
	bandwidth?: #bandwidth | list.MaxItems(1) & [_, ...] & [...#bandwidth]
	timeouts?: #timeouts

	#bandwidth: {
		download_speed?: number
		upload_speed?:   number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
