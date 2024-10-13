package res

#aws_datazone_form_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datazone_form_type")
	created_at?:        string
	created_by?:        string
	description?:       string
	domain_identifier!: string
	imports?: [...{
		name?:     string
		revision?: string
	}]
	name!:                      string
	origin_domain_id?:          string
	origin_project_id?:         string
	owning_project_identifier!: string
	revision?:                  string
	status?:                    string
	model?: #model | [...#model]
	timeouts?: #timeouts

	#model: smithy!: string

	#timeouts: create?: string
}
