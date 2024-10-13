package res

import "list"

#aws_amplify_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_amplify_app")
	access_token?: string
	arn?:          string
	auto_branch_creation_patterns?: [...string]
	basic_auth_credentials?:      string
	build_spec?:                  string
	custom_headers?:              string
	default_domain?:              string
	description?:                 string
	enable_auto_branch_creation?: bool
	enable_basic_auth?:           bool
	enable_branch_auto_build?:    bool
	enable_branch_auto_deletion?: bool
	environment_variables?: [string]: string
	iam_service_role_arn?: string
	id?:                   string
	name!:                 string
	oauth_token?:          string
	platform?:             string
	production_branch?: [...{
		branch_name?:      string
		last_deploy_time?: string
		status?:           string
		thumbnail_url?:    string
	}]
	repository?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	auto_branch_creation_config?: #auto_branch_creation_config | list.MaxItems(1) & [...#auto_branch_creation_config]
	cache_config?: #cache_config | list.MaxItems(1) & [...#cache_config]
	custom_rule?: #custom_rule | [...#custom_rule]

	#auto_branch_creation_config: {
		basic_auth_credentials?:      string
		build_spec?:                  string
		enable_auto_build?:           bool
		enable_basic_auth?:           bool
		enable_performance_mode?:     bool
		enable_pull_request_preview?: bool
		environment_variables?: [string]: string
		framework?:                     string
		pull_request_environment_name?: string
		stage?:                         string
	}

	#cache_config: type!: string

	#custom_rule: {
		condition?: string
		source!:    string
		status?:    string
		target!:    string
	}
}
