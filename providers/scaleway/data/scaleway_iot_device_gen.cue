package data

#scaleway_iot_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iot_device")
	close({
		// Allow plain and server-authenticated SSL connections in
		// addition to mutually-authenticated ones
		allow_insecure?: bool

		// Allow multiple connections
		allow_multiple_connections?: bool

		// Certificate section of the device
		certificate?: [...close({
			crt?: string
			key?: string
		})]

		// The date and time of the creation of the device
		created_at?: string

		// The description of the device
		description?: string

		// The ID of the IOT Device
		device_id?: string

		// The ID of the hub on which this device will be created
		hub_id?: string
		id?:     string

		// The MQTT connection status of the device
		is_connected?: bool

		// The date and time of last MQTT activity of the device
		last_activity_at?: string

		// Rules to authorize or deny the device to publish/subscribe to
		// specific topics
		message_filters?: [...close({
			publish?: [...close({
				policy?: string
				topics?: [...string]
			})]
			subscribe?: [...close({
				policy?: string
				topics?: [...string]
			})]
		})]

		// The name of the device
		name?: string

		// The region you want to attach the resource to
		region?: string

		// The status of the device
		status?: string

		// The date and time of the last update of the device
		updated_at?: string
	})
}
