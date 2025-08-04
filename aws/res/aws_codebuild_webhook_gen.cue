package res

import "list"

#aws_codebuild_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_webhook")
	close({
		branch_filter?:   string
		build_type?:      string
		id?:              string
		manual_creation?: bool
		filter_group?: matchN(1, [#filter_group, [...#filter_group]])
		payload_url?:  string
		project_name!: string
		region?:       string
		secret?:       string
		url?:          string
		scope_configuration?: matchN(1, [#scope_configuration, list.MaxItems(1) & [...#scope_configuration]])
	})

	#filter_group: close({
		filter?: matchN(1, [_#defs."/$defs/filter_group/$defs/filter", [..._#defs."/$defs/filter_group/$defs/filter"]])
	})

	#scope_configuration: close({
		domain?: string
		name!:   string
		scope!:  string
	})

	_#defs: "/$defs/filter_group/$defs/filter": close({
		exclude_matched_pattern?: bool
		pattern!:                 string
		type!:                    string
	})
}
