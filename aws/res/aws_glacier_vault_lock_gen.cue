package res

#aws_glacier_vault_lock: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glacier_vault_lock")
	complete_lock!:         bool
	id?:                    string
	ignore_deletion_error?: bool
	policy!:                string
	vault_name!:            string
}
