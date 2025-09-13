package res

import "list"

#google_dialogflow_fulfillment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_fulfillment")
	close({
		// The human-readable name of the fulfillment, unique within the
		// agent.
		display_name!: string

		// Whether fulfillment is enabled.
		enabled?: bool
		features?: matchN(1, [#features, [...#features]])
		id?: string

		// The unique identifier of the fulfillment.
		// Format: projects/<Project ID>/agent/fulfillment -
		// projects/<Project ID>/locations/<Location
		// ID>/agent/fulfillment
		name?: string
		generic_web_service?: matchN(1, [#generic_web_service, list.MaxItems(1) & [...#generic_web_service]])
		timeouts?: #timeouts
		project?:  string
	})

	#features: close({
		// The type of the feature that enabled for fulfillment.
		// * SMALLTALK: Fulfillment is enabled for SmallTalk. Possible
		// values: ["SMALLTALK"]
		type!: string
	})

	#generic_web_service: close({
		// The password for HTTP Basic authentication.
		password?: string

		// The HTTP request headers to send together with fulfillment
		// requests.
		request_headers?: [string]: string

		// The fulfillment URI for receiving POST requests. It must use
		// https protocol.
		uri!: string

		// The user name for HTTP Basic authentication.
		username?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
