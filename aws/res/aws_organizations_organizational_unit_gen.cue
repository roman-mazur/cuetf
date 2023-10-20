package res

#aws_organizations_organizational_unit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_organizational_unit")
	accounts?: [...{
		arn?:   string
		email?: string
		id?:    string
		name?:  string
	}]
	arn?:      string
	id?:       string
	name:      string
	parent_id: string
	tags?: [string]: string
	tags_all?: [string]: string
}
