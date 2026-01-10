package data

#aws_organizations_delegated_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_organizations_delegated_services")
	close({
		account_id!: string
		delegated_services?: [...close({
			delegation_enabled_date?: string
			service_principal?:       string
		})]
		id?: string
	})
}
