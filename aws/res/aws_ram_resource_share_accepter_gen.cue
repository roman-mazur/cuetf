package res

#aws_ram_resource_share_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ram_resource_share_accepter")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		id?:                  string
		invitation_arn?:      string
		receiver_account_id?: string
		resources?: [...string]
		sender_account_id?: string
		timeouts?:          #timeouts
		share_arn!:         string
		share_id?:          string
		share_name?:        string
		status?:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
