package data

#aws_redshift_data_shares: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_data_shares")
	id?: string
	data_shares?: #data_shares | [...#data_shares]

	#data_shares: {
		data_share_arn?: string
		managed_by?:     string
		producer_arn?:   string
	}
}
