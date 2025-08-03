package data

#aws_codecommit_approval_rule_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecommit_approval_rule_template")
	close({
		approval_rule_template_id?: string
		content?:                   string
		creation_date?:             string
		description?:               string
		id?:                        string
		last_modified_date?:        string
		last_modified_user?:        string
		name!:                      string
		region?:                    string
		rule_content_sha256?:       string
	})
}
