package res

import "list"

#aws_glue_data_catalog_encryption_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_data_catalog_encryption_settings")
	catalog_id?:                       string
	id?:                               string
	data_catalog_encryption_settings?: #data_catalog_encryption_settings | list.MaxItems(1) & [_, ...] & [...#data_catalog_encryption_settings]

	#data_catalog_encryption_settings: {
		connection_password_encryption?: #data_catalog_encryption_settings.#connection_password_encryption | list.MaxItems(1) & [_, ...] & [...#data_catalog_encryption_settings.#connection_password_encryption]
		encryption_at_rest?:             #data_catalog_encryption_settings.#encryption_at_rest | list.MaxItems(1) & [_, ...] & [...#data_catalog_encryption_settings.#encryption_at_rest]

		#connection_password_encryption: {
			aws_kms_key_id?:                      string
			return_connection_password_encrypted: bool
		}

		#encryption_at_rest: {
			catalog_encryption_mode: string
			sse_aws_kms_key_id?:     string
		}
	}
}
