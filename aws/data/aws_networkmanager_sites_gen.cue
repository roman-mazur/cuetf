package data

#aws_networkmanager_sites: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_sites")
	global_network_id: string
	id?:               string
	ids?: [...string]
	tags?: [string]: string
}
