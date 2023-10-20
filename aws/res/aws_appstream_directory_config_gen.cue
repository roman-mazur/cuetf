package res

import "list"

#aws_appstream_directory_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appstream_directory_config")
	created_time?:  string
	directory_name: string
	id?:            string
	organizational_unit_distinguished_names: [...string]
	service_account_credentials?: #service_account_credentials | list.MaxItems(1) & [_, ...] & [...#service_account_credentials]

	#service_account_credentials: {
		account_name:     string
		account_password: string
	}
}
