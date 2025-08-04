package res

#aws_backup_global_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_global_settings")
	close({
		global_settings!: [string]: string
		id?: string
	})
}
