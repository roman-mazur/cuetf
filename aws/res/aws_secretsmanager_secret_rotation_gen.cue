package res

import "list"

#aws_secretsmanager_secret_rotation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret_rotation")
	close({
		rotation_rules?: matchN(1, [#rotation_rules, list.MaxItems(1) & [_, ...] & [...#rotation_rules]])
		id?:                  string
		region?:              string
		rotate_immediately?:  bool
		rotation_enabled?:    bool
		rotation_lambda_arn?: string
		secret_id!:           string
	})

	#rotation_rules: close({
		automatically_after_days?: number
		duration?:                 string
		schedule_expression?:      string
	})
}
