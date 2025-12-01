package res

import "list"

#aws_codepipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codepipeline")
	close({
		arn?:            string
		execution_mode?: string
		id?:             string
		name!:           string
		artifact_store!: matchN(1, [#artifact_store, [_, ...] & [...#artifact_store]])
		pipeline_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		stage!: matchN(1, [#stage, [_, _, ...] & [...#stage]])
		role_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		trigger_all?: [...close({
			git_configuration?: [...close({
				pull_request?: [...close({
					branches?: [...close({
						excludes?: [...string]
						includes?: [...string]
					})]
					events?: [...string]
					file_paths?: [...close({
						excludes?: [...string]
						includes?: [...string]
					})]
				})]
				push?: [...close({
					branches?: [...close({
						excludes?: [...string]
						includes?: [...string]
					})]
					file_paths?: [...close({
						excludes?: [...string]
						includes?: [...string]
					})]
					tags?: [...close({
						excludes?: [...string]
						includes?: [...string]
					})]
				})]
				source_action_name?: string
			})]
			provider_type?: string
		})]
		trigger?: matchN(1, [#trigger, list.MaxItems(50) & [...#trigger]])
		variable?: matchN(1, [#variable, [...#variable]])
	})

	#artifact_store: close({
		encryption_key?: matchN(1, [_#defs."/$defs/artifact_store/$defs/encryption_key", list.MaxItems(1) & [..._#defs."/$defs/artifact_store/$defs/encryption_key"]])
		location!: string
		region?:   string
		type!:     string
	})

	#stage: close({
		action!: matchN(1, [_#defs."/$defs/stage/$defs/action", [_, ...] & [..._#defs."/$defs/stage/$defs/action"]])
		before_entry?: matchN(1, [_#defs."/$defs/stage/$defs/before_entry", list.MaxItems(1) & [..._#defs."/$defs/stage/$defs/before_entry"]])
		on_failure?: matchN(1, [_#defs."/$defs/stage/$defs/on_failure", list.MaxItems(1) & [..._#defs."/$defs/stage/$defs/on_failure"]])
		on_success?: matchN(1, [_#defs."/$defs/stage/$defs/on_success", list.MaxItems(1) & [..._#defs."/$defs/stage/$defs/on_success"]])
		name!: string
	})

	#trigger: close({
		git_configuration!: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/trigger/$defs/git_configuration"]])
		provider_type!: string
	})

	#variable: close({
		default_value?: string
		description?:   string
		name!:          string
	})

	_#defs: "/$defs/artifact_store/$defs/encryption_key": close({
		id!:   string
		type!: string
	})

	_#defs: "/$defs/stage/$defs/action": close({
		category!: string
		configuration?: [string]: string
		input_artifacts?: [...string]
		name!:      string
		namespace?: string
		output_artifacts?: [...string]
		owner!:              string
		provider!:           string
		region?:             string
		role_arn?:           string
		run_order?:          number
		timeout_in_minutes?: number
		version!:            string
	})

	_#defs: "/$defs/stage/$defs/before_entry": close({
		condition!: matchN(1, [_#defs."/$defs/stage/$defs/before_entry/$defs/condition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/stage/$defs/before_entry/$defs/condition"]])
	})

	_#defs: "/$defs/stage/$defs/before_entry/$defs/condition": close({
		rule!: matchN(1, [_#defs."/$defs/stage/$defs/before_entry/$defs/condition/$defs/rule", list.MaxItems(5) & [_, ...] & [..._#defs."/$defs/stage/$defs/before_entry/$defs/condition/$defs/rule"]])
		result?: string
	})

	_#defs: "/$defs/stage/$defs/before_entry/$defs/condition/$defs/rule": close({
		rule_type_id!: matchN(1, [_#defs."/$defs/stage/$defs/before_entry/$defs/condition/$defs/rule/$defs/rule_type_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/stage/$defs/before_entry/$defs/condition/$defs/rule/$defs/rule_type_id"]])
		commands?: [...string]
		configuration?: [string]: string
		input_artifacts?: [...string]
		name!:               string
		region?:             string
		role_arn?:           string
		timeout_in_minutes?: number
	})

	_#defs: "/$defs/stage/$defs/before_entry/$defs/condition/$defs/rule/$defs/rule_type_id": close({
		category!: string
		owner?:    string
		provider!: string
		version?:  string
	})

	_#defs: "/$defs/stage/$defs/on_failure": close({
		condition?: matchN(1, [_#defs."/$defs/stage/$defs/on_failure/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/stage/$defs/on_failure/$defs/condition"]])
		retry_configuration?: matchN(1, [_#defs."/$defs/stage/$defs/on_failure/$defs/retry_configuration", list.MaxItems(1) & [..._#defs."/$defs/stage/$defs/on_failure/$defs/retry_configuration"]])
		result?: string
	})

	_#defs: "/$defs/stage/$defs/on_failure/$defs/condition": close({
		rule!: matchN(1, [_#defs."/$defs/stage/$defs/on_failure/$defs/condition/$defs/rule", list.MaxItems(5) & [_, ...] & [..._#defs."/$defs/stage/$defs/on_failure/$defs/condition/$defs/rule"]])
		result?: string
	})

	_#defs: "/$defs/stage/$defs/on_failure/$defs/condition/$defs/rule": close({
		rule_type_id!: matchN(1, [_#defs."/$defs/stage/$defs/on_failure/$defs/condition/$defs/rule/$defs/rule_type_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/stage/$defs/on_failure/$defs/condition/$defs/rule/$defs/rule_type_id"]])
		commands?: [...string]
		configuration?: [string]: string
		input_artifacts?: [...string]
		name!:               string
		region?:             string
		role_arn?:           string
		timeout_in_minutes?: number
	})

	_#defs: "/$defs/stage/$defs/on_failure/$defs/condition/$defs/rule/$defs/rule_type_id": close({
		category!: string
		owner?:    string
		provider!: string
		version?:  string
	})

	_#defs: "/$defs/stage/$defs/on_failure/$defs/retry_configuration": close({
		retry_mode?: string
	})

	_#defs: "/$defs/stage/$defs/on_success": close({
		condition!: matchN(1, [_#defs."/$defs/stage/$defs/on_success/$defs/condition", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/stage/$defs/on_success/$defs/condition"]])
	})

	_#defs: "/$defs/stage/$defs/on_success/$defs/condition": close({
		rule!: matchN(1, [_#defs."/$defs/stage/$defs/on_success/$defs/condition/$defs/rule", list.MaxItems(5) & [_, ...] & [..._#defs."/$defs/stage/$defs/on_success/$defs/condition/$defs/rule"]])
		result?: string
	})

	_#defs: "/$defs/stage/$defs/on_success/$defs/condition/$defs/rule": close({
		rule_type_id!: matchN(1, [_#defs."/$defs/stage/$defs/on_success/$defs/condition/$defs/rule/$defs/rule_type_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/stage/$defs/on_success/$defs/condition/$defs/rule/$defs/rule_type_id"]])
		commands?: [...string]
		configuration?: [string]: string
		input_artifacts?: [...string]
		name!:               string
		region?:             string
		role_arn?:           string
		timeout_in_minutes?: number
	})

	_#defs: "/$defs/stage/$defs/on_success/$defs/condition/$defs/rule/$defs/rule_type_id": close({
		category!: string
		owner?:    string
		provider!: string
		version?:  string
	})

	_#defs: "/$defs/trigger/$defs/git_configuration": close({
		pull_request?: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration/$defs/pull_request", list.MaxItems(3) & [..._#defs."/$defs/trigger/$defs/git_configuration/$defs/pull_request"]])
		push?: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration/$defs/push", list.MaxItems(3) & [..._#defs."/$defs/trigger/$defs/git_configuration/$defs/push"]])
		source_action_name!: string
	})

	_#defs: "/$defs/trigger/$defs/git_configuration/$defs/pull_request": close({
		branches?: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration/$defs/pull_request/$defs/branches", list.MaxItems(1) & [..._#defs."/$defs/trigger/$defs/git_configuration/$defs/pull_request/$defs/branches"]])
		file_paths?: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration/$defs/pull_request/$defs/file_paths", list.MaxItems(1) & [..._#defs."/$defs/trigger/$defs/git_configuration/$defs/pull_request/$defs/file_paths"]])
		events?: [...string]
	})

	_#defs: "/$defs/trigger/$defs/git_configuration/$defs/pull_request/$defs/branches": close({
		excludes?: [...string]
		includes?: [...string]
	})

	_#defs: "/$defs/trigger/$defs/git_configuration/$defs/pull_request/$defs/file_paths": close({
		excludes?: [...string]
		includes?: [...string]
	})

	_#defs: "/$defs/trigger/$defs/git_configuration/$defs/push": close({
		branches?: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration/$defs/push/$defs/branches", list.MaxItems(1) & [..._#defs."/$defs/trigger/$defs/git_configuration/$defs/push/$defs/branches"]])
		file_paths?: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration/$defs/push/$defs/file_paths", list.MaxItems(1) & [..._#defs."/$defs/trigger/$defs/git_configuration/$defs/push/$defs/file_paths"]])
		tags?: matchN(1, [_#defs."/$defs/trigger/$defs/git_configuration/$defs/push/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/trigger/$defs/git_configuration/$defs/push/$defs/tags"]])
	})

	_#defs: "/$defs/trigger/$defs/git_configuration/$defs/push/$defs/branches": close({
		excludes?: [...string]
		includes?: [...string]
	})

	_#defs: "/$defs/trigger/$defs/git_configuration/$defs/push/$defs/file_paths": close({
		excludes?: [...string]
		includes?: [...string]
	})

	_#defs: "/$defs/trigger/$defs/git_configuration/$defs/push/$defs/tags": close({
		excludes?: [...string]
		includes?: [...string]
	})
}
