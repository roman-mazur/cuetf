package data

#aws_networkmanager_global_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_networkmanager_global_network")
	close({
		arn?:               string
		description?:       string
		global_network_id!: string
		id?:                string
		tags?: [string]: string
	})
}
