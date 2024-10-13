package data

#aws_networkmanager_links: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_links")
	global_network_id!: string
	id?:                string
	ids?: [...string]
	provider_name?: string
	site_id?:       string
	tags?: [string]: string
	type?: string
}
