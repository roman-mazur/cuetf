package data

#aws_redshift_producer_data_shares: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_producer_data_shares")
	id?:           string
	producer_arn!: string
	status?:       string
	data_shares?: #data_shares | [...#data_shares]

	#data_shares: {
		data_share_arn?: string
		managed_by?:     string
		producer_arn?:   string
	}
}
