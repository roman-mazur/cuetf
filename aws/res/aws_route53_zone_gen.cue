package res

#aws_route53_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_zone")
	arn?:               string
	comment?:           string
	delegation_set_id?: string
	force_destroy?:     bool
	id?:                string
	name!:              string
	name_servers?: [...string]
	primary_name_server?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	zone_id?: string
	vpc?: #vpc | [...#vpc]

	#vpc: {
		vpc_id!:     string
		vpc_region?: string
	}
}
