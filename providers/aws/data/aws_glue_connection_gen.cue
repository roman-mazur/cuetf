package data

aws_glue_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_glue_connection")
	close({
		arn?: string
		athena_properties?: [string]: string
		authentication_configuration?: [...close({
			authentication_type?: string
			basic_authentication_credentials?: [...close({
				password?: string
				username?: string
			})]
			custom_authentication_credentials?: [string]: string
			kms_key_arn?: string
			oauth2_properties?: [...close({
				authorization_code_properties?: [...close({
					authorization_code?: string
					redirect_uri?:       string
				})]
				oauth2_client_application?: [...close({
					aws_managed_client_application_reference?:  string
					user_managed_client_application_client_id?: string
				})]
				oauth2_credentials?: [...close({
					access_token?:                                  string
					jwt_token?:                                     string
					refresh_token?:                                 string
					user_managed_client_application_client_secret?: string
				})]
				oauth2_grant_type?: string
				token_url?:         string
				token_url_parameters_map?: [string]: string
			})]
			secret_arn?: string
		})]
		catalog_id?: string
		connection_properties?: [string]: string
		connection_type?: string
		description?:     string
		id!:              string
		match_criteria?: [...string]
		name?: string
		physical_connection_requirements?: [...close({
			availability_zone?: string
			security_group_id_list?: [...string]
			subnet_id?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
	})
}
