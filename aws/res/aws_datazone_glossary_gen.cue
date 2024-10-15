package res

#aws_datazone_glossary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_glossary")
	description?:               string
	domain_identifier!:         string
	id?:                        string
	name!:                      string
	owning_project_identifier!: string
	status?:                    string
}
