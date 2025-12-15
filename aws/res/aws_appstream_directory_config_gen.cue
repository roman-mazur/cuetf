package res

import "list"

#aws_appstream_directory_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_appstream_directory_config")
	close({
		created_time?:   string
		directory_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		organizational_unit_distinguished_names!: [...string]
		certificate_based_auth_properties?: matchN(1, [#certificate_based_auth_properties, list.MaxItems(1) & [...#certificate_based_auth_properties]])
		service_account_credentials!: matchN(1, [#service_account_credentials, list.MaxItems(1) & [_, ...] & [...#service_account_credentials]])
	})

	#certificate_based_auth_properties: close({
		certificate_authority_arn?: string
		status?:                    string
	})

	#service_account_credentials: close({
		account_name!:     string
		account_password!: string
	})
}
