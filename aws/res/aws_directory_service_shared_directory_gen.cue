package res

import "list"

#aws_directory_service_shared_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_shared_directory")
	close({
		directory_id!: string
		id?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		method?:              string
		notes?:               string
		shared_directory_id?: string
		target!: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		timeouts?: #timeouts
	})

	#target: close({
		id!:   string
		type?: string
	})

	#timeouts: close({
		delete?: string
	})
}
