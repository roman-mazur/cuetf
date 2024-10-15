package res

import "list"

#aws_lightsail_container_service_deployment_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_container_service_deployment_version")
	created_at?:   string
	id?:           string
	service_name!: string
	state?:        string
	version?:      number
	container?: #container | list.MaxItems(53) & [_, ...] & [...#container]
	public_endpoint?: #public_endpoint | list.MaxItems(1) & [...#public_endpoint]
	timeouts?: #timeouts

	#container: {
		command?: [...string]
		container_name!: string
		environment?: [string]: string
		image!: string
		ports?: [string]: string
	}

	#public_endpoint: {
		container_name!: string
		container_port!: number
		health_check?: #public_endpoint.#health_check | list.MaxItems(1) & [_, ...] & [...#public_endpoint.#health_check]

		#health_check: {
			healthy_threshold?:   number
			interval_seconds?:    number
			path?:                string
			success_codes?:       string
			timeout_seconds?:     number
			unhealthy_threshold?: number
		}
	}

	#timeouts: create?: string
}
