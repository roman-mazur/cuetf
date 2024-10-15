package res

#aws_datazone_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_project")
	created_at?:        string
	created_by?:        string
	description?:       string
	domain_identifier!: string
	failure_reasons?: [...{
		code?:    string
		message?: string
	}]
	glossary_terms?: [...string]
	id?:                  string
	last_updated_at?:     string
	name!:                string
	project_status?:      string
	skip_deletion_check?: bool
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
