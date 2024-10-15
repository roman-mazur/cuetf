package res

#aws_codedeploy_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codedeploy_app")
	application_id?:      string
	arn?:                 string
	compute_platform?:    string
	github_account_name?: string
	id?:                  string
	linked_to_github?:    bool
	name!:                string
	tags?: [string]:     string
	tags_all?: [string]: string
}
