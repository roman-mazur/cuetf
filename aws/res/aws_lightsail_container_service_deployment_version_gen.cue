package res

import "list"

#aws_lightsail_container_service_deployment_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_container_service_deployment_version")
	close({
		created_at?: string
		id?:         string
		container?: matchN(1, [#container, list.MaxItems(53) & [_, ...] & [...#container]])
		public_endpoint?: matchN(1, [#public_endpoint, list.MaxItems(1) & [...#public_endpoint]])
		timeouts?:     #timeouts
		region?:       string
		service_name!: string
		state?:        string
		version?:      number
	})

	#container: close({
		command?: [...string]
		container_name!: string
		environment?: [string]: string
		image!: string
		ports?: [string]: string
	})

	#public_endpoint: close({
		container_name!: string
		container_port!: number
		health_check?: matchN(1, [_#defs."/$defs/public_endpoint/$defs/health_check", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/public_endpoint/$defs/health_check"]])
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/public_endpoint/$defs/health_check": close({
		healthy_threshold?:   number
		interval_seconds?:    number
		path?:                string
		success_codes?:       string
		timeout_seconds?:     number
		unhealthy_threshold?: number
	})
}
