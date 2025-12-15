package res

import "list"

#aws_ssmcontacts_contact_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ssmcontacts_contact_channel")
	close({
		activation_status?: string
		arn?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		contact_id!: string
		id?:         string
		name!:       string
		type!:       string
		delivery_address!: matchN(1, [#delivery_address, list.MaxItems(1) & [_, ...] & [...#delivery_address]])
	})

	#delivery_address: close({
		simple_address!: string
	})
}
