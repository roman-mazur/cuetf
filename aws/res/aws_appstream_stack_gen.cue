package res

import "list"

#aws_appstream_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appstream_stack")
	arn?:          string
	created_time?: string
	description?:  string
	display_name?: string
	embed_host_domains?: [...string]
	feedback_url?: string
	id?:           string
	name!:         string
	redirect_url?: string
	tags?: [string]: string
	tags_all?: [string]: string
	access_endpoints?: #access_endpoints | list.MaxItems(4) & [...#access_endpoints]
	application_settings?: #application_settings | list.MaxItems(1) & [...#application_settings]
	storage_connectors?: #storage_connectors | [...#storage_connectors]
	streaming_experience_settings?: #streaming_experience_settings | list.MaxItems(1) & [...#streaming_experience_settings]
	user_settings?: #user_settings | [...#user_settings]

	#access_endpoints: {
		endpoint_type!: string
		vpce_id?:       string
	}

	#application_settings: {
		enabled!:        bool
		settings_group?: string
	}

	#storage_connectors: {
		connector_type!: string
		domains?: [...string]
		resource_identifier?: string
	}

	#streaming_experience_settings: preferred_protocol?: string

	#user_settings: {
		action!:     string
		permission!: string
	}
}
