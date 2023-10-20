package res

#aws_transfer_agreement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_agreement")
	access_role:        string
	agreement_id?:      string
	arn?:               string
	base_directory:     string
	description?:       string
	id?:                string
	local_profile_id:   string
	partner_profile_id: string
	server_id:          string
	status?:            string
	tags?: [string]: string
	tags_all?: [string]: string
}
