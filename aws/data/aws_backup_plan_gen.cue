package data

#aws_backup_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_plan")
	arn?:     string
	id?:      string
	name?:    string
	plan_id!: string
	tags?: [string]: string
	version?: string
}
