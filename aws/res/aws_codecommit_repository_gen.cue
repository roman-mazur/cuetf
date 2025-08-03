package res

#aws_codecommit_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecommit_repository")
	close({
		arn?:             string
		clone_url_http?:  string
		clone_url_ssh?:   string
		default_branch?:  string
		description?:     string
		id?:              string
		kms_key_id?:      string
		region?:          string
		repository_id?:   string
		repository_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
