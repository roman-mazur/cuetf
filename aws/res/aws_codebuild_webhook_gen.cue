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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		payload_url?:  string
		project_name!: string
		secret?:       string
		filter_group?: matchN(1, [#filter_group, [...#filter_group]])
		scope_configuration?: matchN(1, [#scope_configuration, list.MaxItems(1) & [...#scope_configuration]])
		url?: string
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
