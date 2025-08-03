package data

#aws_lex_bot_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_bot_alias")
	close({
		arn?:               string
		bot_name!:          string
		bot_version?:       string
		checksum?:          string
		created_date?:      string
		description?:       string
		id?:                string
		last_updated_date?: string
		name!:              string
		region?:            string
	})
}
