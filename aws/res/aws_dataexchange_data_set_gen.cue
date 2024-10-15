package res

#aws_dataexchange_data_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dataexchange_data_set")
	arn?:         string
	asset_type!:  string
	description!: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
}
