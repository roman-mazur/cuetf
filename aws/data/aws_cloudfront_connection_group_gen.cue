package data

#aws_cloudfront_connection_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_cloudfront_connection_group")
	close({
		anycast_ip_list_id?: string
		arn?:                string
		enabled?:            bool
		etag?:               string
		id?:                 string
		ipv6_enabled?:       bool
		is_default?:         bool
		last_modified_time?: string
		name?:               string
		routing_endpoint?:   string
		status?:             string
		tags?: [string]: string
	})
}
