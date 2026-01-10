package res

#aws_ssm_parameter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ssm_parameter")
	close({
		allowed_pattern?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		arn?:            string
		data_type?:      string
		description?:    string
		has_value_wo?:   bool
		id?:             string
		insecure_value?: string
		key_id?:         string
		name!:           string
		overwrite?:      bool
		tags?: [string]:     string
		tags_all?: [string]: string
		tier?:             string
		type!:             string
		value?:            string
		value_wo?:         string
		value_wo_version?: number
		version?:          number
	})
}
