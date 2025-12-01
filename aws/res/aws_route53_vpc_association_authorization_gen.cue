package res

#aws_route53_vpc_association_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53_vpc_association_authorization")
	close({
		timeouts?:   #timeouts
		id?:         string
		vpc_id!:     string
		vpc_region?: string
		zone_id!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
