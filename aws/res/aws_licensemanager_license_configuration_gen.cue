package res

#aws_licensemanager_license_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_licensemanager_license_configuration")
	arn?:                      string
	description?:              string
	id?:                       string
	license_count?:            number
	license_count_hard_limit?: bool
	license_counting_type!:    string
	license_rules?: [...string]
	name!:             string
	owner_account_id?: string
	tags?: [string]:     string
	tags_all?: [string]: string
}
