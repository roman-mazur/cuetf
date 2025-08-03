package res

#aws_quicksight_ingestion: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_ingestion")
	close({
		arn?:              string
		aws_account_id?:   string
		data_set_id!:      string
		id?:               string
		ingestion_id!:     string
		ingestion_status?: string
		ingestion_type!:   string
		region?:           string
	})
}
