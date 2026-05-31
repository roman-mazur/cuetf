package res

#google_dialogflow_sip_trunk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_sip_trunk")
	close({
		timeouts?: #timeouts

		// Output only. The connections of the SIP trunk.
		connections?: [...close({
			connection_id?: string
			error_details?: [...close({
				code?:    string
				message?: string
			})]
			state?:       string
			update_time?: string
		})]

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Optional. Human-readable alias for this trunk.
		display_name?: string

		// Required. The expected hostnames in the peer certificate from
		// the partner that is used for TLS authentication.
		expected_hostname!: [...string]
		id?: string

		// The location of the SIP trunk.
		location!: string

		// Identifier. The unique identifier of the SIP trunk.
		name?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
