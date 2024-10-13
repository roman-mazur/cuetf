package res

import "list"

#aws_ssm_patch_baseline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_patch_baseline")
	approved_patches?: [...string]
	approved_patches_compliance_level?:    string
	approved_patches_enable_non_security?: bool
	arn?:                                  string
	description?:                          string
	id?:                                   string
	json?:                                 string
	name!:                                 string
	operating_system?:                     string
	rejected_patches?: [...string]
	rejected_patches_action?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	approval_rule?: #approval_rule | [...#approval_rule]
	global_filter?: #global_filter | list.MaxItems(4) & [...#global_filter]
	source?: #source | list.MaxItems(20) & [...#source]

	#approval_rule: {
		approve_after_days?:  number
		approve_until_date?:  string
		compliance_level?:    string
		enable_non_security?: bool
		patch_filter?: #approval_rule.#patch_filter | list.MaxItems(10) & [_, ...] & [...#approval_rule.#patch_filter]

		#patch_filter: {
			key!: string
			values!: [...string]
		}
	}

	#global_filter: {
		key!: string
		values!: [...string]
	}

	#source: {
		configuration!: string
		name!:          string
		products!: [...string]
	}
}
