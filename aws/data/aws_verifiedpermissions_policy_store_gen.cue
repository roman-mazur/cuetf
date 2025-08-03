package data

#aws_verifiedpermissions_policy_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_policy_store")
	close({
		arn?:                 string
		created_date?:        string
		deletion_protection?: string
		description?:         string
		id!:                  string
		last_updated_date?:   string
		region?:              string
		tags?: [string]: string
		validation_settings?: [...close({
			mode?: string
		})]
	})
}
