package res

import "list"

#scaleway_iot_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iot_device")
	close({
		certificate?: matchN(1, [#certificate, list.MaxItems(1) & [...#certificate]])
		message_filters?: matchN(1, [#message_filters, list.MaxItems(1) & [...#message_filters]])

		// Allow plain and server-authenticated SSL connections in
		// addition to mutually-authenticated ones
		allow_insecure?: bool

		// Allow multiple connections
		allow_multiple_connections?: bool

		// The date and time of the creation of the device
		created_at?: string

		// The description of the device
		description?: string

		// The ID of the hub on which this device will be created
		hub_id!: string
		id?:     string

		// The MQTT connection status of the device
		is_connected?: bool

		// The date and time of last MQTT activity of the device
		last_activity_at?: string

		// The name of the device
		name!: string

		// The region you want to attach the resource to
		region?: string

		// The status of the device
		status?: string

		// The date and time of the last update of the device
		updated_at?: string
	})

	#certificate: close({
		// X509 PEM encoded certificate of the device
		crt?: string

		// X509 PEM encoded key of the device
		key?: string
	})

	#message_filters: close({
		publish?: matchN(1, [_#defs."/$defs/message_filters/$defs/publish", list.MaxItems(1) & [..._#defs."/$defs/message_filters/$defs/publish"]])
		subscribe?: matchN(1, [_#defs."/$defs/message_filters/$defs/subscribe", list.MaxItems(1) & [..._#defs."/$defs/message_filters/$defs/subscribe"]])
	})

	_#defs: "/$defs/message_filters/$defs/publish": close({
		// Publish message filter policy
		policy?: string

		// List of topics in the set
		topics?: [...string]
	})

	_#defs: "/$defs/message_filters/$defs/subscribe": close({
		// Subscribe message filter policy
		policy?: string

		// List of topics in the set
		topics?: [...string]
	})
}
