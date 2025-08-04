package res

#aws_vpc_route_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_route_server")
	close({
		amazon_side_asn!:           number
		arn?:                       string
		persist_routes?:            string
		persist_routes_duration?:   number
		region?:                    string
		route_server_id?:           string
		sns_notifications_enabled?: bool
		timeouts?:                  #timeouts
		sns_topic_arn?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
