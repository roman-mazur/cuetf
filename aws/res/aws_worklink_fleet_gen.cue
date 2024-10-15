package res

import "list"

#aws_worklink_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_worklink_fleet")
	arn?:                            string
	audit_stream_arn?:               string
	company_code?:                   string
	created_time?:                   string
	device_ca_certificate?:          string
	display_name?:                   string
	id?:                             string
	last_updated_time?:              string
	name!:                           string
	optimize_for_end_user_location?: bool
	identity_provider?: #identity_provider | list.MaxItems(1) & [...#identity_provider]
	network?: #network | list.MaxItems(1) & [...#network]

	#identity_provider: {
		saml_metadata!: string
		type!:          string
	}

	#network: {
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	}
}
