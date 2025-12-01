package data

#aws_networkmanager_links: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_networkmanager_links")
	close({
		global_network_id!: string
		id?:                string
		ids?: [...string]
		provider_name?: string
		site_id?:       string
		tags?: [string]: string
		type?: string
	})
}
