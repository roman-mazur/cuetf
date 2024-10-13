package res

#aws_redshift_snapshot_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_snapshot_schedule")
	arn?: string
	definitions!: [...string]
	description?:       string
	force_destroy?:     bool
	id?:                string
	identifier?:        string
	identifier_prefix?: string
	tags?: [string]: string
	tags_all?: [string]: string
}
