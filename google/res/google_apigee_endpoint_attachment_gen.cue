package res

#google_apigee_endpoint_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_endpoint_attachment")
	close({
		// State of the endpoint attachment connection to the service
		// attachment.
		connection_state?: string

		// ID of the endpoint attachment.
		endpoint_attachment_id!: string

		// Host that can be used in either HTTP Target Endpoint directly,
		// or as the host in Target Server.
		host?: string
		id?:   string

		// Location of the endpoint attachment.
		location!: string

		// Name of the Endpoint Attachment in the following format:
		// organizations/{organization}/endpointAttachments/{endpointAttachment}.
		name?: string

		// The Apigee Organization associated with the Apigee instance,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// Format: projects/*/regions/*/serviceAttachments/*
		service_attachment!: string
		timeouts?:           #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
