package res

#aws_dataexchange_revision: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dataexchange_revision")
	close({
		arn?:         string
		comment?:     string
		data_set_id!: string
		id?:          string
		region?:      string
		revision_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
