package data

#aws_networkmanager_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_site")
	arn?:              string
	description?:      string
	global_network_id: string
	id?:               string
	location?: [...{
		address?:   string
		latitude?:  string
		longitude?: string
	}]
	site_id: string
	tags?: [string]: string
}
