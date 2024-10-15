package res

import "list"

#aws_glue_classifier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_classifier")
	id?:   string
	name!: string
	csv_classifier?: #csv_classifier | list.MaxItems(1) & [...#csv_classifier]
	grok_classifier?: #grok_classifier | list.MaxItems(1) & [...#grok_classifier]
	json_classifier?: #json_classifier | list.MaxItems(1) & [...#json_classifier]
	xml_classifier?: #xml_classifier | list.MaxItems(1) & [...#xml_classifier]

	#csv_classifier: {
		allow_single_column?:        bool
		contains_header?:            string
		custom_datatype_configured?: bool
		custom_datatypes?: [...string]
		delimiter?:              string
		disable_value_trimming?: bool
		header?: [...string]
		quote_symbol?: string
		serde?:        string
	}

	#grok_classifier: {
		classification!:  string
		custom_patterns?: string
		grok_pattern!:    string
	}

	#json_classifier: json_path!: string

	#xml_classifier: {
		classification!: string
		row_tag!:        string
	}
}
