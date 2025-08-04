package res

import "list"

#aws_s3control_object_lambda_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_object_lambda_access_point")
	close({
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [_, ...] & [...#configuration]])
		account_id?: string
		alias?:      string
		arn?:        string
		id?:         string
		name!:       string
		region?:     string
	})

	#configuration: close({
		transformation_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/transformation_configuration", [_, ...] & [..._#defs."/$defs/configuration/$defs/transformation_configuration"]])
		allowed_features?: [...string]
		cloud_watch_metrics_enabled?: bool
		supporting_access_point!:     string
	})

	_#defs: "/$defs/configuration/$defs/transformation_configuration": close({
		content_transformation?: matchN(1, [_#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation"]])
		actions!: [...string]
	})

	_#defs: "/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation": close({
		aws_lambda?: matchN(1, [_#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation/$defs/aws_lambda", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation/$defs/aws_lambda"]])
	})

	_#defs: "/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation/$defs/aws_lambda": close({
		function_arn!:     string
		function_payload?: string
	})
}
