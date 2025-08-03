package res

#aws_route53_hosted_zone_dnssec: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_hosted_zone_dnssec")
	close({
		hosted_zone_id!: string
		id?:             string
		signing_status?: string
		timeouts?:       #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
