package data

#aws_networkmanager_global_networks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_global_networks")
	id?: string
	ids?: [...string]
	tags?: [string]: string
}
