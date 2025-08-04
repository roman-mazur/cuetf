package res

#aws_route53_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_zone")
	close({
		arn?:               string
		comment?:           string
		delegation_set_id?: string
		force_destroy?:     bool
		id?:                string
		name!:              string
		timeouts?:          #timeouts
		name_servers?: [...string]
		primary_name_server?: string
		vpc?: matchN(1, [#vpc, [...#vpc]])
		tags?: [string]:     string
		tags_all?: [string]: string
		zone_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc: close({
		vpc_id!:     string
		vpc_region?: string
	})
}
