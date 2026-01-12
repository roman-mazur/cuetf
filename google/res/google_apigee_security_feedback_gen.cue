package res

#google_apigee_security_feedback: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_security_feedback")
	close({
		// Optional text the user can provide for additional, unstructured
		// context.
		comment?: string

		// The time when this specific feedback id was created.
		create_time?: string

		// The display name of the feedback.
		display_name?: string

		// Resource ID of the security feedback.
		feedback_id!: string

		// The type of feedback being submitted. Possible values:
		// ["EXCLUDED_DETECTION"]
		feedback_type!: string

		// Name of the security feedback resource,
		// in the format
		// 'organizations/{{org_name}}/securityFeedback/{{feedback_id}}'.
		name?: string

		// The Apigee Organization associated with the Apigee Security
		// Feedback,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string
		id?:     string
		feedback_contexts!: matchN(1, [#feedback_contexts, [_, ...] & [...#feedback_contexts]])
		timeouts?: #timeouts

		// The reason for the feedback. Possible values:
		// ["INTERNAL_SYSTEM", "NON_RISK_CLIENT", "NAT",
		// "PENETRATION_TEST", "OTHER"]
		reason?: string

		// The time when this specific feedback id was updated.
		update_time?: string
	})

	#feedback_contexts: close({
		// The attribute the user is providing feedback about. Possible
		// values: ["ATTRIBUTE_ENVIRONMENTS",
		// "ATTRIBUTE_IP_ADDRESS_RANGES"]
		attribute!: string

		// The values of the attribute the user is providing feedback
		// about, separated by commas.
		values!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
