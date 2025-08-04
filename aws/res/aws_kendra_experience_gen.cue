package res

import "list"

#aws_kendra_experience: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_experience")
	close({
		arn?:         string
		description?: string
		endpoints?: [...close({
			endpoint?:      string
			endpoint_type?: string
		})]
		experience_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		index_id!: string
		timeouts?: #timeouts
		name!:     string
		role_arn!: string
		status?:   string
	})

	#configuration: close({
		content_source_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/content_source_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/content_source_configuration"]])
		user_identity_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/user_identity_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/user_identity_configuration"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/content_source_configuration": close({
		data_source_ids?: [...string]
		direct_put_content?: bool
		faq_ids?: [...string]
	})

	_#defs: "/$defs/configuration/$defs/user_identity_configuration": close({
		identity_attribute_name!: string
	})
}
