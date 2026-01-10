package data

#aws_networkmanager_connections: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_networkmanager_connections")
	close({
		device_id?:         string
		global_network_id!: string
		id?:                string
		ids?: [...string]
		tags?: [string]: string
	})
}
