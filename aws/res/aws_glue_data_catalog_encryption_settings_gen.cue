package res

import "list"

#aws_glue_data_catalog_encryption_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_data_catalog_encryption_settings")
	close({
		data_catalog_encryption_settings?: matchN(1, [#data_catalog_encryption_settings, list.MaxItems(1) & [_, ...] & [...#data_catalog_encryption_settings]])
		catalog_id?: string
		id?:         string
		region?:     string
	})

	#data_catalog_encryption_settings: close({
		connection_password_encryption?: matchN(1, [_#defs."/$defs/data_catalog_encryption_settings/$defs/connection_password_encryption", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_catalog_encryption_settings/$defs/connection_password_encryption"]])
		encryption_at_rest?: matchN(1, [_#defs."/$defs/data_catalog_encryption_settings/$defs/encryption_at_rest", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_catalog_encryption_settings/$defs/encryption_at_rest"]])
	})

	_#defs: "/$defs/data_catalog_encryption_settings/$defs/connection_password_encryption": close({
		aws_kms_key_id?:                       string
		return_connection_password_encrypted!: bool
	})

	_#defs: "/$defs/data_catalog_encryption_settings/$defs/encryption_at_rest": close({
		catalog_encryption_mode!:         string
		catalog_encryption_service_role?: string
		sse_aws_kms_key_id?:              string
	})
}
