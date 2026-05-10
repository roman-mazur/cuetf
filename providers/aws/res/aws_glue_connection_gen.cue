package res

import "list"

#aws_glue_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glue_connection")
	close({
		authentication_configuration?: matchN(1, [#authentication_configuration, list.MaxItems(1) & [...#authentication_configuration]])
		physical_connection_requirements?: matchN(1, [#physical_connection_requirements, list.MaxItems(1) & [...#physical_connection_requirements]])
		arn?: string
		athena_properties?: [string]: string
		catalog_id?: string
		connection_properties?: [string]: string
		connection_type?: string
		description?:     string
		id?:              string
		match_criteria?: [...string]
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#authentication_configuration: close({
		basic_authentication_credentials?: matchN(1, [_#defs."/$defs/authentication_configuration/$defs/basic_authentication_credentials", list.MaxItems(1) & [..._#defs."/$defs/authentication_configuration/$defs/basic_authentication_credentials"]])
		oauth2_properties?: matchN(1, [_#defs."/$defs/authentication_configuration/$defs/oauth2_properties", list.MaxItems(1) & [..._#defs."/$defs/authentication_configuration/$defs/oauth2_properties"]])
		authentication_type!: string
		custom_authentication_credentials?: [string]: string
		kms_key_arn?: string
		secret_arn?:  string
	})

	#physical_connection_requirements: close({
		availability_zone?: string
		security_group_id_list?: [...string]
		subnet_id?: string
	})

	_#defs: "/$defs/authentication_configuration/$defs/basic_authentication_credentials": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/authentication_configuration/$defs/oauth2_properties": close({
		authorization_code_properties?: matchN(1, [_#defs."/$defs/authentication_configuration/$defs/oauth2_properties/$defs/authorization_code_properties", list.MaxItems(1) & [..._#defs."/$defs/authentication_configuration/$defs/oauth2_properties/$defs/authorization_code_properties"]])
		oauth2_client_application?: matchN(1, [_#defs."/$defs/authentication_configuration/$defs/oauth2_properties/$defs/oauth2_client_application", list.MaxItems(1) & [..._#defs."/$defs/authentication_configuration/$defs/oauth2_properties/$defs/oauth2_client_application"]])
		oauth2_credentials?: matchN(1, [_#defs."/$defs/authentication_configuration/$defs/oauth2_properties/$defs/oauth2_credentials", list.MaxItems(1) & [..._#defs."/$defs/authentication_configuration/$defs/oauth2_properties/$defs/oauth2_credentials"]])
		oauth2_grant_type?: string
		token_url?:         string
		token_url_parameters_map?: [string]: string
	})

	_#defs: "/$defs/authentication_configuration/$defs/oauth2_properties/$defs/authorization_code_properties": close({
		authorization_code!: string
		redirect_uri!:       string
	})

	_#defs: "/$defs/authentication_configuration/$defs/oauth2_properties/$defs/oauth2_client_application": close({
		aws_managed_client_application_reference?:  string
		user_managed_client_application_client_id?: string
	})

	_#defs: "/$defs/authentication_configuration/$defs/oauth2_properties/$defs/oauth2_credentials": close({
		access_token?:                                  string
		jwt_token?:                                     string
		refresh_token?:                                 string
		user_managed_client_application_client_secret?: string
	})
}
