package data

#aws_organizations_entity_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_organizations_entity_path")
	close({
		entity_id!:   string
		entity_path?: string
	})
}
