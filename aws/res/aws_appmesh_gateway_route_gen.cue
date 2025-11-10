package res

import "list"

#aws_appmesh_gateway_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appmesh_gateway_route")
	close({
		arn?:               string
		created_date?:      string
		id?:                string
		last_updated_date?: string
		mesh_name!:         string
		mesh_owner?:        string
		spec!: matchN(1, [#spec, list.MaxItems(1) & [_, ...] & [...#spec]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		name!:           string
		resource_owner?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		virtual_gateway_name!: string
	})

	#spec: close({
		grpc_route?: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/grpc_route"]])
		http2_route?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route"]])
		http_route?: matchN(1, [_#defs."/$defs/spec/$defs/http_route", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route"]])
		priority?: number
	})

	_#defs: "/$defs/spec/$defs/grpc_route": close({
		action!: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/action"]])
		match!: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/match"]])
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/action": close({
		target!: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/action/$defs/target", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/action/$defs/target"]])
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/action/$defs/target": close({
		virtual_service!: matchN(1, [_#defs."/$defs/spec/$defs/grpc_route/$defs/action/$defs/target/$defs/virtual_service", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/grpc_route/$defs/action/$defs/target/$defs/virtual_service"]])
		port?: number
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/action/$defs/target/$defs/virtual_service": close({
		virtual_service_name!: string
	})

	_#defs: "/$defs/spec/$defs/grpc_route/$defs/match": close({
		port?:         number
		service_name!: string
	})

	_#defs: "/$defs/spec/$defs/http2_route": close({
		action!: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action"]])
		match!: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match"]])
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action": close({
		rewrite?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite"]])
		target!: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/target", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/target"]])
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite": close({
		hostname?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/hostname", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/hostname"]])
		path?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/path", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/path"]])
		prefix?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/prefix", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/prefix"]])
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/hostname": close({
		default_target_hostname!: string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/path": close({
		exact!: string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action/$defs/rewrite/$defs/prefix": close({
		default_prefix?: string
		value?:          string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action/$defs/target": close({
		virtual_service!: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/target/$defs/virtual_service", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http2_route/$defs/action/$defs/target/$defs/virtual_service"]])
		port?: number
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/action/$defs/target/$defs/virtual_service": close({
		virtual_service_name!: string
	})

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match": close({
		header?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/header"]])
		hostname?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/hostname", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/hostname"]])
		path?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/path", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/path"]])
		query_parameter?: matchN(1, [_#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http2_route/$defs/match/$defs/query_parameter"]])
		port?:   number
		prefix?: string
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

	_#defs: "/$defs/spec/$defs/http2_route/$defs/match/$defs/hostname": close({
		exact?:  string
		suffix?: string
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

	_#defs: "/$defs/spec/$defs/http_route": close({
		action!: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/action"]])
		match!: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/match"]])
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action": close({
		rewrite?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite"]])
		target!: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/target", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/target"]])
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite": close({
		hostname?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/hostname", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/hostname"]])
		path?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/path", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/path"]])
		prefix?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/prefix", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/prefix"]])
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/hostname": close({
		default_target_hostname!: string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/path": close({
		exact!: string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action/$defs/rewrite/$defs/prefix": close({
		default_prefix?: string
		value?:          string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action/$defs/target": close({
		virtual_service!: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/target/$defs/virtual_service", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/http_route/$defs/action/$defs/target/$defs/virtual_service"]])
		port?: number
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/action/$defs/target/$defs/virtual_service": close({
		virtual_service_name!: string
	})

	_#defs: "/$defs/spec/$defs/http_route/$defs/match": close({
		header?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/header"]])
		hostname?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/hostname", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/hostname"]])
		path?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/path", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/path"]])
		query_parameter?: matchN(1, [_#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter", list.MaxItems(10) & [..._#defs."/$defs/spec/$defs/http_route/$defs/match/$defs/query_parameter"]])
		port?:   number
		prefix?: string
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

	_#defs: "/$defs/spec/$defs/http_route/$defs/match/$defs/hostname": close({
		exact?:  string
		suffix?: string
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
}
