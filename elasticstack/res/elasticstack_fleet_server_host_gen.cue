package res

#elasticstack_fleet_server_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_server_host")
	default?: bool
	host_id?: string
	hosts!: [...string]
	id?:   string
	name!: string
}
