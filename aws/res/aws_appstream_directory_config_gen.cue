package res

import "list"

#aws_appstream_directory_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appstream_directory_config")
	close({
		service_account_credentials?: matchN(1, [#service_account_credentials, list.MaxItems(1) & [_, ...] & [...#service_account_credentials]])
		created_time?:   string
		directory_name!: string
		id?:             string
		organizational_unit_distinguished_names!: [...string]
		region?: string
	})

	#service_account_credentials: close({
		account_name!:     string
		account_password!: string
	})
}
