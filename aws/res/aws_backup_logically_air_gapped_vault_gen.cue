package res

#aws_backup_logically_air_gapped_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_backup_logically_air_gapped_vault")
	arn?:                string
	id?:                 string
	max_retention_days!: number
	min_retention_days!: number
	name!:               string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: create?: string
}
