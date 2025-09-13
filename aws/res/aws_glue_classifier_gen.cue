package res

import "list"

#aws_glue_classifier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_classifier")
	close({
		csv_classifier?: matchN(1, [#csv_classifier, list.MaxItems(1) & [...#csv_classifier]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		grok_classifier?: matchN(1, [#grok_classifier, list.MaxItems(1) & [...#grok_classifier]])
		name!: string
		json_classifier?: matchN(1, [#json_classifier, list.MaxItems(1) & [...#json_classifier]])
		xml_classifier?: matchN(1, [#xml_classifier, list.MaxItems(1) & [...#xml_classifier]])
	})

	#csv_classifier: close({
		allow_single_column?:        bool
		contains_header?:            string
		custom_datatype_configured?: bool
		custom_datatypes?: [...string]
		delimiter?:              string
		disable_value_trimming?: bool
		header?: [...string]
		quote_symbol?: string
		serde?:        string
	})

	#grok_classifier: close({
		classification!:  string
		custom_patterns?: string
		grok_pattern!:    string
	})

	#json_classifier: close({
		json_path!: string
	})

	#xml_classifier: close({
		classification!: string
		row_tag!:        string
	})
}
