package res

#aws_redshiftserverless_custom_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshiftserverless_custom_domain_association")
	custom_domain_certificate_arn!:         string
	custom_domain_certificate_expiry_time?: string
	custom_domain_name!:                    string
	id?:                                    string
	workgroup_name!:                        string
}
