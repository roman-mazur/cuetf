package res

#aws_auditmanager_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_auditmanager_control")
	action_plan_instructions?: string
	action_plan_title?:        string
	arn?:                      string
	description?:              string
	id?:                       string
	name!:                     string
	tags?: [string]: string
	tags_all?: [string]: string
	testing_information?: string
	type?:                string
	control_mapping_sources?: #control_mapping_sources | [...#control_mapping_sources]

	#control_mapping_sources: {
		source_description?:   string
		source_frequency?:     string
		source_id?:            string
		source_name!:          string
		source_set_up_option!: string
		source_type!:          string
		troubleshooting_text?: string
		source_keyword?: #control_mapping_sources.#source_keyword | [...#control_mapping_sources.#source_keyword]

		#source_keyword: {
			keyword_input_type!: string
			keyword_value!:      string
		}
	}
}
