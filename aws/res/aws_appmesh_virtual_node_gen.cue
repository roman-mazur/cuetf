package res

import "list"

#aws_appmesh_virtual_node: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_virtual_node")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_name!:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		spec?: matchN(1, [#spec, list.MaxItems(1) & [_, ...] & [...#spec]])
		mesh_owner?:     string
		name!:           string
		resource_owner?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#spec: close({
		backend?: matchN(1, [_#defs."/$defs/spec/$defs/backend", [..._#defs."/$defs/spec/$defs/backend"]])
		backend_defaults?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults"]])
		listener?: matchN(1, [_#defs."/$defs/spec/$defs/listener", [..._#defs."/$defs/spec/$defs/listener"]])
		logging?: matchN(1, [_#defs."/$defs/spec/$defs/logging", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/logging"]])
		service_discovery?: matchN(1, [_#defs."/$defs/spec/$defs/service_discovery", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/service_discovery"]])
	})

	_#defs: "/$defs/spec/$defs/backend": close({
		virtual_service?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service"]])
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service": close({
		client_policy?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy"]])
		virtual_service_name!: string
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy": close({
		tls?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls"]])
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls": close({
		certificate?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate"]])
		validation?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation"]])
		enforce?: bool
		ports?: [...number]
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate": close({
		file?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate/$defs/file"]])
		sds?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate/$defs/sds", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate/$defs/sds"]])
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate/$defs/file": close({
		certificate_chain!: string
		private_key!:       string
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/certificate/$defs/sds": close({
		secret_name!: string
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation": close({
		subject_alternative_names?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names"]])
		trust?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust"]])
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match"]])
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match": close({
		exact!: [...string]
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust": close({
		acm?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/acm", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/acm"]])
		file?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/file"]])
		sds?: matchN(1, [_#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/sds", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/sds"]])
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/acm": close({
		certificate_authority_arns!: [...string]
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/file": close({
		certificate_chain!: string
	})

	_#defs: "/$defs/spec/$defs/backend/$defs/virtual_service/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/sds": close({
		secret_name!: string
	})

	_#defs: "/$defs/spec/$defs/backend_defaults": close({
		client_policy?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy"]])
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy": close({
		tls?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls"]])
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls": close({
		certificate?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate"]])
		validation?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation"]])
		enforce?: bool
		ports?: [...number]
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate": close({
		file?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate/$defs/file"]])
		sds?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate/$defs/sds", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate/$defs/sds"]])
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate/$defs/file": close({
		certificate_chain!: string
		private_key!:       string
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/certificate/$defs/sds": close({
		secret_name!: string
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation": close({
		subject_alternative_names?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names"]])
		trust?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust"]])
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match"]])
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match": close({
		exact!: [...string]
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust": close({
		acm?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/acm", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/acm"]])
		file?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/file"]])
		sds?: matchN(1, [_#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/sds", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/sds"]])
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/acm": close({
		certificate_authority_arns!: [...string]
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/file": close({
		certificate_chain!: string
	})

	_#defs: "/$defs/spec/$defs/backend_defaults/$defs/client_policy/$defs/tls/$defs/validation/$defs/trust/$defs/sds": close({
		secret_name!: string
	})

	_#defs: "/$defs/spec/$defs/listener": close({
		connection_pool?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/connection_pool", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/connection_pool"]])
		health_check?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/health_check", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/health_check"]])
		outlier_detection?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/outlier_detection", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/outlier_detection"]])
		port_mapping?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/port_mapping", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/listener/$defs/port_mapping"]])
		timeout?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout"]])
		tls?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/connection_pool": close({
		grpc?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/grpc"]])
		http?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/http", [..._#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/http"]])
		http2?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/http2", [..._#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/http2"]])
		tcp?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/tcp", [..._#defs."/$defs/spec/$defs/listener/$defs/connection_pool/$defs/tcp"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/connection_pool/$defs/grpc": close({
		max_requests!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/connection_pool/$defs/http": close({
		max_connections!:      number
		max_pending_requests?: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/connection_pool/$defs/http2": close({
		max_requests!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/connection_pool/$defs/tcp": close({
		max_connections!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/health_check": close({
		healthy_threshold!:   number
		interval_millis!:     number
		path?:                string
		port?:                number
		protocol!:            string
		timeout_millis!:      number
		unhealthy_threshold!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/outlier_detection": close({
		base_ejection_duration?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/outlier_detection/$defs/base_ejection_duration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/listener/$defs/outlier_detection/$defs/base_ejection_duration"]])
		interval?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/outlier_detection/$defs/interval", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/listener/$defs/outlier_detection/$defs/interval"]])
		max_ejection_percent!: number
		max_server_errors!:    number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/outlier_detection/$defs/base_ejection_duration": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/outlier_detection/$defs/interval": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/port_mapping": close({
		port!:     number
		protocol!: string
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout": close({
		grpc?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc"]])
		http?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http"]])
		http2?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http2", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http2"]])
		tcp?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/tcp", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/tcp"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc/$defs/idle"]])
		per_request?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc/$defs/per_request", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc/$defs/per_request"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc/$defs/idle": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/grpc/$defs/per_request": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/http": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http/$defs/idle"]])
		per_request?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http/$defs/per_request", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http/$defs/per_request"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/http/$defs/idle": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/http/$defs/per_request": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/http2": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http2/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http2/$defs/idle"]])
		per_request?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http2/$defs/per_request", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/http2/$defs/per_request"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/http2/$defs/idle": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/http2/$defs/per_request": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/tcp": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/tcp/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/timeout/$defs/tcp/$defs/idle"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/timeout/$defs/tcp/$defs/idle": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls": close({
		certificate?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate"]])
		validation?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation"]])
		mode!: string
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/certificate": close({
		acm?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/acm", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/acm"]])
		file?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/file"]])
		sds?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/sds", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/sds"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/acm": close({
		certificate_arn!: string
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/file": close({
		certificate_chain!: string
		private_key!:       string
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/certificate/$defs/sds": close({
		secret_name!: string
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/validation": close({
		subject_alternative_names?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/subject_alternative_names", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/subject_alternative_names"]])
		trust?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/subject_alternative_names": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/subject_alternative_names/$defs/match": close({
		exact!: [...string]
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust": close({
		file?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust/$defs/file"]])
		sds?: matchN(1, [_#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust/$defs/sds", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust/$defs/sds"]])
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust/$defs/file": close({
		certificate_chain!: string
	})

	_#defs: "/$defs/spec/$defs/listener/$defs/tls/$defs/validation/$defs/trust/$defs/sds": close({
		secret_name!: string
	})

	_#defs: "/$defs/spec/$defs/logging": close({
		access_log?: matchN(1, [_#defs."/$defs/spec/$defs/logging/$defs/access_log", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/logging/$defs/access_log"]])
	})

	_#defs: "/$defs/spec/$defs/logging/$defs/access_log": close({
		file?: matchN(1, [_#defs."/$defs/spec/$defs/logging/$defs/access_log/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/logging/$defs/access_log/$defs/file"]])
	})

	_#defs: "/$defs/spec/$defs/logging/$defs/access_log/$defs/file": close({
		format?: matchN(1, [_#defs."/$defs/spec/$defs/logging/$defs/access_log/$defs/file/$defs/format", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/logging/$defs/access_log/$defs/file/$defs/format"]])
		path!: string
	})

	_#defs: "/$defs/spec/$defs/logging/$defs/access_log/$defs/file/$defs/format": close({
		json?: matchN(1, [_#defs."/$defs/spec/$defs/logging/$defs/access_log/$defs/file/$defs/format/$defs/json", [..._#defs."/$defs/spec/$defs/logging/$defs/access_log/$defs/file/$defs/format/$defs/json"]])
		text?: string
	})

	_#defs: "/$defs/spec/$defs/logging/$defs/access_log/$defs/file/$defs/format/$defs/json": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/spec/$defs/service_discovery": close({
		aws_cloud_map?: matchN(1, [_#defs."/$defs/spec/$defs/service_discovery/$defs/aws_cloud_map", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/service_discovery/$defs/aws_cloud_map"]])
		dns?: matchN(1, [_#defs."/$defs/spec/$defs/service_discovery/$defs/dns", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/service_discovery/$defs/dns"]])
	})

	_#defs: "/$defs/spec/$defs/service_discovery/$defs/aws_cloud_map": close({
		attributes?: [string]: string
		namespace_name!: string
		service_name!:   string
	})

	_#defs: "/$defs/spec/$defs/service_discovery/$defs/dns": close({
		hostname!:      string
		ip_preference?: string
		response_type?: string
	})
}
