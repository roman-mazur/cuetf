package res

import "list"

#aws_servicecatalog_service_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_servicecatalog_service_action")
	close({
		accept_language?: string
		description?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name!:   string
		definition!: matchN(1, [#definition, list.MaxItems(1) & [_, ...] & [...#definition]])
		timeouts?: #timeouts
	})

	#definition: close({
		assume_role?: string
		name!:        string
		parameters?:  string
		type?:        string
		version!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
