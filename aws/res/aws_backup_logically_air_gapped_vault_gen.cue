package res

#aws_backup_logically_air_gapped_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_logically_air_gapped_vault")
	close({
		arn?:                string
		timeouts?:           #timeouts
		id?:                 string
		max_retention_days!: number
		min_retention_days!: number
		name!:               string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
	})
}
