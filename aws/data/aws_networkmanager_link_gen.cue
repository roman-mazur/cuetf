package data

#aws_networkmanager_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_link")
	arn?: string
	bandwidth?: [...{
		download_speed?: number
		upload_speed?:   number
	}]
	description?:      string
	global_network_id: string
	id?:               string
	link_id:           string
	provider_name?:    string
	site_id?:          string
	tags?: [string]: string
	type?: string
}
