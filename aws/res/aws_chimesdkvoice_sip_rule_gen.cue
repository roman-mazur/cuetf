package res

import "list"

#aws_chimesdkvoice_sip_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkvoice_sip_rule")
	close({
		disabled?: bool
		id?:       string
		name!:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		trigger_type!:  string
		trigger_value!: string
		target_applications?: matchN(1, [#target_applications, list.MaxItems(25) & [_, ...] & [...#target_applications]])
	})

	#target_applications: close({
		aws_region!:               string
		priority!:                 number
		sip_media_application_id!: string
	})
}
