package res

#aws_auditmanager_account_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_auditmanager_account_registration")
	delegated_admin_account?: string
	deregister_on_destroy?:   bool
	id?:                      string
	kms_key?:                 string
	status?:                  string
}
