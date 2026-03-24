package data

#scaleway_iot_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iot_hub")
	close({
		// The current number of connected devices in the Hub
		connected_device_count?: number

		// The date and time of the creation of the IoT Hub
		created_at?: string

		// Wether to enable the device auto provisioning or not
		device_auto_provisioning?: bool

		// The number of registered devices in the Hub
		device_count?: number

		// Whether to enable the hub events or not
		disable_events?: bool

		// Whether to enable the hub or not
		enabled?: bool

		// The endpoint to connect the devices to
		endpoint?: string

		// Topic prefix for the hub events
		events_topic_prefix?: string

		// Custom user provided certificate authority
		hub_ca?: string

		// Challenge certificate for the user provided hub CA
		hub_ca_challenge?: string

		// The ID of the IOT Hub
		hub_id?: string
		id?:     string

		// The MQTT certificat content
		mqtt_ca?: string

		// The url of the MQTT ca
		mqtt_ca_url?: string

		// The name of the hub
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The product plan of the hub
		product_plan?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The status of the hub
		status?: string

		// The date and time of the last update of the IoT Hub
		updated_at?: string
	})
}
