package res

#aws_datazone_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_project")
	close({
		created_at?:        string
		created_by?:        string
		description?:       string
		domain_identifier!: string
		failure_reasons?: [...close({
			code?:    string
			message?: string
		})]
		glossary_terms?: [...string]
		id?:                  string
		last_updated_at?:     string
		timeouts?:            #timeouts
		name!:                string
		project_status?:      string
		region?:              string
		skip_deletion_check?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
