package res

#aws_redshift_data_share_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_data_share_authorization")
	allow_writes?:        bool
	consumer_identifier!: string
	data_share_arn!:      string
	id?:                  string
	managed_by?:          string
	producer_arn?:        string
}
