package res

#aws_codecommit_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codecommit_repository")
	arn?:            string
	clone_url_http?: string
	clone_url_ssh?:  string
	default_branch?: string
	description?:    string
	id?:             string
	repository_id?:  string
	repository_name: string
	tags?: [string]: string
	tags_all?: [string]: string
}
