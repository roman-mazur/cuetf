package res

#aws_cloudfront_vpc_origin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_vpc_origin")
	close({
		timeouts?: #timeouts
		arn?:      string
		etag?:     string
		id?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_origin_endpoint_config?: matchN(1, [#vpc_origin_endpoint_config, [...#vpc_origin_endpoint_config]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_origin_endpoint_config: close({
		origin_ssl_protocols?: matchN(1, [_#defs."/$defs/vpc_origin_endpoint_config/$defs/origin_ssl_protocols", [..._#defs."/$defs/vpc_origin_endpoint_config/$defs/origin_ssl_protocols"]])
		arn!:                    string
		http_port!:              number
		https_port!:             number
		name!:                   string
		origin_protocol_policy!: string
	})

	_#defs: "/$defs/vpc_origin_endpoint_config/$defs/origin_ssl_protocols": close({
		items!: [...string]
		quantity!: number
	})
}
