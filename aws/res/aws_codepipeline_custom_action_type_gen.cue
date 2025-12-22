package res

import "list"

#aws_codepipeline_custom_action_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codepipeline_custom_action_type")
	close({
		arn?:           string
		category!:      string
		id?:            string
		owner?:         string
		provider_name!: string
		configuration_property?: matchN(1, [#configuration_property, list.MaxItems(10) & [...#configuration_property]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		input_artifact_details!: matchN(1, [#input_artifact_details, list.MaxItems(1) & [_, ...] & [...#input_artifact_details]])
		output_artifact_details!: matchN(1, [#output_artifact_details, list.MaxItems(1) & [_, ...] & [...#output_artifact_details]])
		tags_all?: [string]: string
		version!: string
		settings?: matchN(1, [#settings, list.MaxItems(1) & [...#settings]])
	})

	#configuration_property: close({
		description?: string
		key!:         bool
		name!:        string
		queryable?:   bool
		required!:    bool
		secret!:      bool
		type?:        string
	})

	#input_artifact_details: close({
		maximum_count!: number
		minimum_count!: number
	})

	#output_artifact_details: close({
		maximum_count!: number
		minimum_count!: number
	})

	#settings: close({
		entity_url_template?:           string
		execution_url_template?:        string
		revision_url_template?:         string
		third_party_configuration_url?: string
	})
}
