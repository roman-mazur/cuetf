package data

#aws_docdb_orderable_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_docdb_orderable_db_instance")
	availability_zones?: [...string]
	engine?:         string
	engine_version?: string
	id?:             string
	instance_class?: string
	license_model?:  string
	preferred_instance_classes?: [...string]
	vpc?: bool
}
