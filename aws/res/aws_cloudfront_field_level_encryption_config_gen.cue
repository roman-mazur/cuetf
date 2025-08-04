package res

import "list"

#aws_cloudfront_field_level_encryption_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_field_level_encryption_config")
	close({
		content_type_profile_config?: matchN(1, [#content_type_profile_config, list.MaxItems(1) & [_, ...] & [...#content_type_profile_config]])
		arn?:              string
		caller_reference?: string
		comment?:          string
		etag?:             string
		id?:               string
		query_arg_profile_config?: matchN(1, [#query_arg_profile_config, list.MaxItems(1) & [_, ...] & [...#query_arg_profile_config]])
	})

	#content_type_profile_config: close({
		content_type_profiles?: matchN(1, [_#defs."/$defs/content_type_profile_config/$defs/content_type_profiles", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/content_type_profile_config/$defs/content_type_profiles"]])
		forward_when_content_type_is_unknown!: bool
	})

	#query_arg_profile_config: close({
		query_arg_profiles?: matchN(1, [_#defs."/$defs/query_arg_profile_config/$defs/query_arg_profiles", list.MaxItems(1) & [..._#defs."/$defs/query_arg_profile_config/$defs/query_arg_profiles"]])
		forward_when_query_arg_profile_is_unknown!: bool
	})

	_#defs: "/$defs/content_type_profile_config/$defs/content_type_profiles": close({
		items?: matchN(1, [_#defs."/$defs/content_type_profile_config/$defs/content_type_profiles/$defs/items", [_, ...] & [..._#defs."/$defs/content_type_profile_config/$defs/content_type_profiles/$defs/items"]])
	})

	_#defs: "/$defs/content_type_profile_config/$defs/content_type_profiles/$defs/items": close({
		content_type!: string
		format!:       string
		profile_id?:   string
	})

	_#defs: "/$defs/query_arg_profile_config/$defs/query_arg_profiles": close({
		items?: matchN(1, [_#defs."/$defs/query_arg_profile_config/$defs/query_arg_profiles/$defs/items", [..._#defs."/$defs/query_arg_profile_config/$defs/query_arg_profiles/$defs/items"]])
	})

	_#defs: "/$defs/query_arg_profile_config/$defs/query_arg_profiles/$defs/items": close({
		profile_id!: string
		query_arg!:  string
	})
}
