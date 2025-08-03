package res

import "list"

#aws_ssmcontacts_contact_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmcontacts_contact_channel")
	close({
		activation_status?: string
		delivery_address?: matchN(1, [#delivery_address, list.MaxItems(1) & [_, ...] & [...#delivery_address]])
		arn?:        string
		contact_id!: string
		id?:         string
		name!:       string
		region?:     string
		type!:       string
	})

	#delivery_address: close({
		simple_address!: string
	})
}
