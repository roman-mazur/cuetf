package res

#aws_worklink_website_certificate_authority_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_worklink_website_certificate_authority_association")
	certificate!:   string
	display_name?:  string
	fleet_arn!:     string
	id?:            string
	website_ca_id?: string
}
