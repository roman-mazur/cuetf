package data

#elasticstack_fleet_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_integration")
	id?:         string
	name!:       string
	prerelease?: bool
	version?:    string
}
