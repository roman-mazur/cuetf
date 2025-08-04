package res

import "list"

#aws_accessanalyzer_analyzer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_accessanalyzer_analyzer")
	close({
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		analyzer_name!: string
		arn?:           string
		id?:            string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#configuration: close({
		internal_access?: matchN(1, [_#defs."/$defs/configuration/$defs/internal_access", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/internal_access"]])
		unused_access?: matchN(1, [_#defs."/$defs/configuration/$defs/unused_access", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/unused_access"]])
	})

	_#defs: "/$defs/configuration/$defs/internal_access": close({
		analysis_rule?: matchN(1, [_#defs."/$defs/configuration/$defs/internal_access/$defs/analysis_rule", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/internal_access/$defs/analysis_rule"]])
	})

	_#defs: "/$defs/configuration/$defs/internal_access/$defs/analysis_rule": close({
		inclusion?: matchN(1, [_#defs."/$defs/configuration/$defs/internal_access/$defs/analysis_rule/$defs/inclusion", [..._#defs."/$defs/configuration/$defs/internal_access/$defs/analysis_rule/$defs/inclusion"]])
	})

	_#defs: "/$defs/configuration/$defs/internal_access/$defs/analysis_rule/$defs/inclusion": close({
		account_ids?: [...string]
		resource_arns?: [...string]
		resource_types?: [...string]
	})

	_#defs: "/$defs/configuration/$defs/unused_access": close({
		analysis_rule?: matchN(1, [_#defs."/$defs/configuration/$defs/unused_access/$defs/analysis_rule", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/unused_access/$defs/analysis_rule"]])
		unused_access_age?: number
	})

	_#defs: "/$defs/configuration/$defs/unused_access/$defs/analysis_rule": close({
		exclusion?: matchN(1, [_#defs."/$defs/configuration/$defs/unused_access/$defs/analysis_rule/$defs/exclusion", [..._#defs."/$defs/configuration/$defs/unused_access/$defs/analysis_rule/$defs/exclusion"]])
	})

	_#defs: "/$defs/configuration/$defs/unused_access/$defs/analysis_rule/$defs/exclusion": close({
		account_ids?: [...string]
		resource_tags?: [...{
			[string]: string
		}]
	})
}
