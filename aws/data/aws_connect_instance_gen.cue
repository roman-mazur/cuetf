package data

#aws_connect_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_instance")
	close({
		arn?:                              string
		auto_resolve_best_voices_enabled?: bool
		contact_flow_logs_enabled?:        bool
		contact_lens_enabled?:             bool
		created_time?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		early_media_enabled?:            bool
		id?:                             string
		identity_management_type?:       string
		inbound_calls_enabled?:          bool
		instance_alias?:                 string
		instance_id?:                    string
		multi_party_conference_enabled?: bool
		outbound_calls_enabled?:         bool
		service_role?:                   string
		status?:                         string
		tags?: [string]: string
	})
}
