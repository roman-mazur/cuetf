package data

#aws_secretsmanager_secret_rotation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret_rotation")
	close({
		id?:                  string
		region?:              string
		rotation_enabled?:    bool
		rotation_lambda_arn?: string
		rotation_rules?: [...close({
			automatically_after_days?: number
			duration?:                 string
			schedule_expression?:      string
		})]
		secret_id!: string
	})
}
