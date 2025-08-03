package res

import "list"

#aws_ssm_patch_baseline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_patch_baseline")
	close({
		approved_patches?: [...string]
		approved_patches_compliance_level?: string
		approval_rule?: matchN(1, [#approval_rule, [...#approval_rule]])
		approved_patches_enable_non_security?:         bool
		arn?:                                          string
		available_security_updates_compliance_status?: string
		description?:                                  string
		id?:                                           string
		global_filter?: matchN(1, [#global_filter, list.MaxItems(4) & [...#global_filter]])
		json?: string
		source?: matchN(1, [#source, list.MaxItems(20) & [...#source]])
		name!:             string
		operating_system?: string
		region?:           string
		rejected_patches?: [...string]
		rejected_patches_action?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#approval_rule: close({
		approve_after_days?:  number
		approve_until_date?:  string
		compliance_level?:    string
		enable_non_security?: bool
		patch_filter?: matchN(1, [_#defs."/$defs/approval_rule/$defs/patch_filter", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/approval_rule/$defs/patch_filter"]])
	})

	#global_filter: close({
		key!: string
		values!: [...string]
	})

	#source: close({
		configuration!: string
		name!:          string
		products!: [...string]
	})

	_#defs: "/$defs/approval_rule/$defs/patch_filter": close({
		key!: string
		values!: [...string]
	})
}
