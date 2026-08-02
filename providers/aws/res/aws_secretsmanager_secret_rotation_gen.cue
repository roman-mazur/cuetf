package res

import "list"

aws_secretsmanager_secret_rotation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_secretsmanager_secret_rotation")
	close({
		external_secret_rotation_metadata?: matchN(1, [#external_secret_rotation_metadata, [...#external_secret_rotation_metadata]])
		rotation_rules!: matchN(1, [#rotation_rules, list.MaxItems(1) & [_, ...] & [...#rotation_rules]])
		external_secret_rotation_role_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		id?:                  string
		rotate_immediately?:  bool
		rotation_enabled?:    bool
		rotation_lambda_arn?: string
		secret_id!:           string
	})

	#external_secret_rotation_metadata: close({
		key!:   string
		value!: string
	})

	#rotation_rules: close({
		automatically_after_days?: number
		duration?:                 string
		schedule_expression?:      string
	})
}
