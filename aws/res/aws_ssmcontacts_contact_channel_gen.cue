package res

import "list"

#aws_ssmcontacts_contact_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssmcontacts_contact_channel")
	activation_status?: string
	arn?:               string
	contact_id:         string
	id?:                string
	name:               string
	type:               string
	delivery_address?:  #delivery_address | list.MaxItems(1) & [_, ...] & [...#delivery_address]

	#delivery_address: simple_address: string
}
