package res

import "list"

#aws_amplify_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_amplify_app")
	close({
		access_token?: string
		arn?:          string
		auto_branch_creation_patterns?: [...string]
		basic_auth_credentials?: string
		build_spec?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		compute_role_arn?: string
		custom_headers?:   string
		default_domain?:   string
		auto_branch_creation_config?: matchN(1, [#auto_branch_creation_config, list.MaxItems(1) & [...#auto_branch_creation_config]])
		description?:                 string
		enable_auto_branch_creation?: bool
		cache_config?: matchN(1, [#cache_config, list.MaxItems(1) & [...#cache_config]])
		enable_basic_auth?:           bool
		enable_branch_auto_build?:    bool
		enable_branch_auto_deletion?: bool
		environment_variables?: [string]: string
		iam_service_role_arn?: string
		id?:                   string
		name!:                 string
		oauth_token?:          string
		platform?:             string
		production_branch?: [...close({
			branch_name?:      string
			last_deploy_time?: string
			status?:           string
			thumbnail_url?:    string
		})]
		repository?: string
		custom_rule?: matchN(1, [#custom_rule, [...#custom_rule]])
		job_config?: matchN(1, [#job_config, list.MaxItems(1) & [...#job_config]])
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#auto_branch_creation_config: close({
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
	})

	#cache_config: close({
		type!: string
	})

	#custom_rule: close({
		condition?: string
		source!:    string
		status?:    string
		target!:    string
	})

	#job_config: close({
		build_compute_type?: string
	})
}
