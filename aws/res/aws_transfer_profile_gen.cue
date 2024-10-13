package res

#aws_transfer_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_profile")
	arn?:    string
	as2_id!: string
	certificate_ids?: [...string]
	id?:           string
	profile_id?:   string
	profile_type!: string
	tags?: [string]: string
	tags_all?: [string]: string
}
