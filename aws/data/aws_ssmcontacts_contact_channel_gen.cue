package data

#aws_ssmcontacts_contact_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmcontacts_contact_channel")
	activation_status?: string
	arn!:               string
	contact_id?:        string
	delivery_address?: [...{
		simple_address?: string
	}]
	id?:   string
	name?: string
	type?: string
}
