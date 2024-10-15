package res

import "list"

#aws_networkmanager_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_site")
	arn?:               string
	description?:       string
	global_network_id!: string
	id?:                string
	tags?: [string]:     string
	tags_all?: [string]: string
	location?: #location | list.MaxItems(1) & [...#location]
	timeouts?: #timeouts

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
