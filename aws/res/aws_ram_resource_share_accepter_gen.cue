package res

#aws_ram_resource_share_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ram_resource_share_accepter")
	id?:                  string
	invitation_arn?:      string
	receiver_account_id?: string
	resources?: [...string]
	sender_account_id?: string
	share_arn!:         string
	share_id?:          string
	share_name?:        string
	status?:            string
	timeouts?:          #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
