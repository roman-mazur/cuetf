package res

#aws_redshift_partner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_partner")
	account_id:         string
	cluster_identifier: string
	database_name:      string
	id?:                string
	partner_name:       string
	status?:            string
	status_message?:    string
}
