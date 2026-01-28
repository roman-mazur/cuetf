package res

import "list"

#aws_directory_service_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_directory_service_region")
	close({
		desired_number_of_domain_controllers?: number
		timeouts?:                             #timeouts
		directory_id!:                         string
		id?:                                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		region_name!: string
		tags?: [string]: string
		vpc_settings!: matchN(1, [#vpc_settings, list.MaxItems(1) & [_, ...] & [...#vpc_settings]])
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_settings: close({
		subnet_ids!: [...string]
		vpc_id!: string
	})
}
