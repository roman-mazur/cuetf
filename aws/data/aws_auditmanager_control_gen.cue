package data

#aws_auditmanager_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_control")
	close({
		action_plan_instructions?: string
		action_plan_title?:        string
		arn?:                      string
		control_mapping_sources?: [...close({
			source_description?: string
			source_frequency?:   string
			source_id?:          string
			source_keyword?: [...close({
				keyword_input_type?: string
				keyword_value?:      string
			})]
			source_name?:          string
			source_set_up_option?: string
			source_type?:          string
			troubleshooting_text?: string
		})]
		description?: string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]: string
		testing_information?: string
		type!:                string
	})
}
