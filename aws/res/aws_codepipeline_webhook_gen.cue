package res

import "list"

#aws_codepipeline_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codepipeline_webhook")
	close({
		arn?:            string
		authentication!: string
		authentication_configuration?: matchN(1, [#authentication_configuration, list.MaxItems(1) & [...#authentication_configuration]])
		filter?: matchN(1, [#filter, list.MaxItems(5) & [_, ...] & [...#filter]])
		id?:     string
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_action!:   string
		target_pipeline!: string
		url?:             string
	})

	#authentication_configuration: close({
		allowed_ip_range?: string
		secret_token?:     string
	})

	#filter: close({
		json_path!:    string
		match_equals!: string
	})
}
