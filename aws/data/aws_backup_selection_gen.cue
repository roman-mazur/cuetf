package data

#aws_backup_selection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_selection")
	iam_role_arn?: string
	id?:           string
	name?:         string
	plan_id!:      string
	resources?: [...string]
	selection_id!: string
}
