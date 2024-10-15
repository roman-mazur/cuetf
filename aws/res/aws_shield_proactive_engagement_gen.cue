package res

#aws_shield_proactive_engagement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_proactive_engagement")
	enabled!: bool
	id?:      string
	emergency_contact?: #emergency_contact | [...#emergency_contact]

	#emergency_contact: {
		contact_notes?: string
		email_address!: string
		phone_number?:  string
	}
}
