package res

import "list"

#aws_s3control_object_lambda_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3control_object_lambda_access_point")
	close({
		account_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		alias?:  string
		arn?:    string
		id?:     string
		name!:   string
		configuration!: matchN(1, [#configuration, list.MaxItems(1) & [_, ...] & [...#configuration]])
	})

	#configuration: close({
		transformation_configuration!: matchN(1, [_#defs."/$defs/configuration/$defs/transformation_configuration", [_, ...] & [..._#defs."/$defs/configuration/$defs/transformation_configuration"]])
		allowed_features?: [...string]
		cloud_watch_metrics_enabled?: bool
		supporting_access_point!:     string
	})

	_#defs: "/$defs/configuration/$defs/transformation_configuration": close({
		content_transformation!: matchN(1, [_#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation"]])
		actions!: [...string]
	})

	_#defs: "/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation": close({
		aws_lambda!: matchN(1, [_#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation/$defs/aws_lambda", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation/$defs/aws_lambda"]])
	})

	_#defs: "/$defs/configuration/$defs/transformation_configuration/$defs/content_transformation/$defs/aws_lambda": close({
		function_arn!:     string
		function_payload?: string
	})
}
