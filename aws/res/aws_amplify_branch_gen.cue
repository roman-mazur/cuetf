package res

#aws_amplify_branch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_amplify_branch")
	app_id!: string
	arn?:    string
	associated_resources?: [...string]
	backend_environment_arn?: string
	basic_auth_credentials?:  string
	branch_name!:             string
	custom_domains?: [...string]
	description?:                 string
	destination_branch?:          string
	display_name?:                string
	enable_auto_build?:           bool
	enable_basic_auth?:           bool
	enable_notification?:         bool
	enable_performance_mode?:     bool
	enable_pull_request_preview?: bool
	environment_variables?: [string]: string
	framework?:                     string
	id?:                            string
	pull_request_environment_name?: string
	source_branch?:                 string
	stage?:                         string
	tags?: [string]:     string
	tags_all?: [string]: string
	ttl?: string
}
