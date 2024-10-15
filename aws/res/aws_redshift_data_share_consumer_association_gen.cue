package res

#aws_redshift_data_share_consumer_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_data_share_consumer_association")
	allow_writes?:             bool
	associate_entire_account?: bool
	consumer_arn?:             string
	consumer_region?:          string
	data_share_arn!:           string
	id?:                       string
	managed_by?:               string
	producer_arn?:             string
}
