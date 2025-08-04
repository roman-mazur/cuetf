package res

import "list"

#aws_appmesh_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_route")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_name!:         string
		mesh_owner?:        string
		name!:              string
		region?:            string
		spec?: matchN(1, [#spec, list.MaxItems(1) & [_, ...] & [...#spec]])
		resource_owner?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		virtual_router_name!: string
	})

	#spec: close({
		grpc_route?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route"]])
		http2_route?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route"]])
		http_route?: matchN(1, [_#defs."/$defs/spec/$defs/http_route", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route"]])
		tcp_route?: matchN(1, [_#defs."/$defs/spec/$defs/tcp_route", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/tcp_route"]])
		priority?: number
	})

	_#defs: "/$defs/spec/$defs/grpc_route": close({
		action?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/action"]])
		match?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/match"]])
		retry_policy?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/retry_policy"]])
		timeout?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/timeout"]])
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/action": close({
		weighted_target?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/action/$defs/weighted_target", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/action/$defs/weighted_target"]])
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/action/$defs/weighted_target": close({
		port?:         number
		virtual_node!: string
		weight!:       number
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/match": close({
		metadata?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata"]])
		method_name?:  string
		port?:         number
		prefix?:       string
		service_name?: string
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata/$defs/match"]])
		invert?: bool
		name!:   string
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata/$defs/match": close({
		range?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata/$defs/match/$defs/range", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata/$defs/match/$defs/range"]])
		exact?:  string
		prefix?: string
		regex?:  string
		suffix?: string
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/match/$defs/metadata/$defs/match/$defs/range": close({
		end!:   number
		start!: number
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/retry_policy": close({
		per_retry_timeout?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/retry_policy/$defs/per_retry_timeout", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/retry_policy/$defs/per_retry_timeout"]])
		grpc_retry_events?: [...string]
		http_retry_events?: [...string]
		max_retries!: number
		tcp_retry_events?: [...string]
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/retry_policy/$defs/per_retry_timeout": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/timeout": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/timeout/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/timeout/$defs/idle"]])
		per_request?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/timeout/$defs/per_request", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/timeout/$defs/per_request"]])
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/timeout/$defs/idle": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/timeout/$defs/per_request": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/http2_route": close({
		action?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action"]])
		match?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match"]])
		retry_policy?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/retry_policy"]])
		timeout?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/timeout"]])
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action": close({
		weighted_target?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/weighted_target", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/weighted_target"]])
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action/$defs/weighted_target": close({
		port?:         number
		virtual_node!: string
		weight!:       number
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match": close({
		header?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header"]])
		method?: string
		port?:   number
		prefix?: string
		scheme?: string
		path?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/path", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/path"]])
		query_parameter?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter"]])
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match/$defs/header": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header/$defs/match"]])
		invert?: bool
		name!:   string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match/$defs/header/$defs/match": close({
		range?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header/$defs/match/$defs/range", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header/$defs/match/$defs/range"]])
		exact?:  string
		prefix?: string
		regex?:  string
		suffix?: string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match/$defs/header/$defs/match/$defs/range": close({
		end!:   number
		start!: number
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match/$defs/path": close({
		exact?: string
		regex?: string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter/$defs/match"]])
		name!: string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter/$defs/match": close({
		exact?: string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/retry_policy": close({
		per_retry_timeout?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/retry_policy/$defs/per_retry_timeout", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/retry_policy/$defs/per_retry_timeout"]])
		http_retry_events?: [...string]
		max_retries!: number
		tcp_retry_events?: [...string]
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/retry_policy/$defs/per_retry_timeout": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/timeout": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/timeout/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/timeout/$defs/idle"]])
		per_request?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/timeout/$defs/per_request", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/timeout/$defs/per_request"]])
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/timeout/$defs/idle": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/timeout/$defs/per_request": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/http_route": close({
		action?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/action"]])
		match?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/match"]])
		retry_policy?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/retry_policy"]])
		timeout?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/timeout"]])
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action": close({
		weighted_target?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/weighted_target", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/weighted_target"]])
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action/$defs/weighted_target": close({
		port?:         number
		virtual_node!: string
		weight!:       number
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match": close({
		header?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header"]])
		method?: string
		port?:   number
		prefix?: string
		scheme?: string
		path?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/path", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/path"]])
		query_parameter?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter"]])
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match/$defs/header": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header/$defs/match"]])
		invert?: bool
		name!:   string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match/$defs/header/$defs/match": close({
		range?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header/$defs/match/$defs/range", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header/$defs/match/$defs/range"]])
		exact?:  string
		prefix?: string
		regex?:  string
		suffix?: string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match/$defs/header/$defs/match/$defs/range": close({
		end!:   number
		start!: number
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match/$defs/path": close({
		exact?: string
		regex?: string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter": close({
		match?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter/$defs/match"]])
		name!: string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter/$defs/match": close({
		exact?: string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/retry_policy": close({
		per_retry_timeout?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/retry_policy/$defs/per_retry_timeout", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/retry_policy/$defs/per_retry_timeout"]])
		http_retry_events?: [...string]
		max_retries!: number
		tcp_retry_events?: [...string]
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/retry_policy/$defs/per_retry_timeout": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/timeout": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/timeout/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/timeout/$defs/idle"]])
		per_request?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/timeout/$defs/per_request", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/timeout/$defs/per_request"]])
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/timeout/$defs/idle": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/timeout/$defs/per_request": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/spec/$defs/tcp_route": close({
		action?: matchN(1, [_#defs."/$defs/spec/$defs/tcp_route/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/tcp_route/$defs/action"]])
		match?: matchN(1, [_#defs."/$defs/spec/$defs/tcp_route/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/tcp_route/$defs/match"]])
		timeout?: matchN(1, [_#defs."/$defs/spec/$defs/tcp_route/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/tcp_route/$defs/timeout"]])
	})

	_#defs: "/$defs/spec/$defs/tcp_route/$defs/action": close({
		weighted_target?: matchN(1, [_#defs."/$defs/spec/$defs/tcp_route/$defs/action/$defs/weighted_target", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/spec/$defs/tcp_route/$defs/action/$defs/weighted_target"]])
	})

	_#defs: "/$defs/spec/$defs/tcp_route/$defs/action/$defs/weighted_target": close({
		port?:         number
		virtual_node!: string
		weight!:       number
	})

	_#defs: "/$defs/spec/$defs/tcp_route/$defs/match": close({
		port?: number
	})

	_#defs: "/$defs/spec/$defs/tcp_route/$defs/timeout": close({
		idle?: matchN(1, [_#defs."/$defs/spec/$defs/tcp_route/$defs/timeout/$defs/idle", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/tcp_route/$defs/timeout/$defs/idle"]])
	})

	_#defs: "/$defs/spec/$defs/tcp_route/$defs/timeout/$defs/idle": close({
		unit!:  string
		value!: number
	})
}
