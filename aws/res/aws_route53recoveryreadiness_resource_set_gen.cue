package res

import "list"

#aws_route53recoveryreadiness_resource_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53recoveryreadiness_resource_set")
	close({
		resources!: matchN(1, [#resources, [_, ...] & [...#resources]])
		arn?:               string
		id?:                string
		resource_set_name!: string
		resource_set_type!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#resources: close({
		dns_target_resource?: matchN(1, [_#defs."/$defs/resources/$defs/dns_target_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/dns_target_resource"]])
		component_id?: string
		readiness_scopes?: [...string]
		resource_arn?: string
	})

	#timeouts: close({
		delete?: string
	})

	_#defs: "/$defs/resources/$defs/dns_target_resource": close({
		target_resource?: matchN(1, [_#defs."/$defs/resources/$defs/dns_target_resource/$defs/target_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/dns_target_resource/$defs/target_resource"]])
		domain_name!:     string
		hosted_zone_arn?: string
		record_set_id?:   string
		record_type?:     string
	})

	_#defs: "/$defs/resources/$defs/dns_target_resource/$defs/target_resource": close({
		nlb_resource?: matchN(1, [_#defs."/$defs/resources/$defs/dns_target_resource/$defs/target_resource/$defs/nlb_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/dns_target_resource/$defs/target_resource/$defs/nlb_resource"]])
		r53_resource?: matchN(1, [_#defs."/$defs/resources/$defs/dns_target_resource/$defs/target_resource/$defs/r53_resource", list.MaxItems(1) & [..._#defs."/$defs/resources/$defs/dns_target_resource/$defs/target_resource/$defs/r53_resource"]])
	})

	_#defs: "/$defs/resources/$defs/dns_target_resource/$defs/target_resource/$defs/nlb_resource": close({
		arn?: string
	})

	_#defs: "/$defs/resources/$defs/dns_target_resource/$defs/target_resource/$defs/r53_resource": close({
		domain_name?:   string
		record_set_id?: string
	})
}
