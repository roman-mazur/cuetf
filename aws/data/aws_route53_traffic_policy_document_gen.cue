package data

import "list"

#aws_route53_traffic_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_traffic_policy_document")
	close({
		id?:   string
		json?: string
		endpoint?: matchN(1, [#endpoint, [...#endpoint]])
		rule?: matchN(1, [#rule, [...#rule]])
		record_type?:    string
		start_endpoint?: string
		start_rule?:     string
		version?:        string
	})

	#endpoint: close({
		id!:     string
		region?: string
		type?:   string
		value?:  string
	})

	#rule: close({
		id!:   string
		type?: string
		geo_proximity_location?: matchN(1, [_#defs."/$defs/rule/$defs/geo_proximity_location", [..._#defs."/$defs/rule/$defs/geo_proximity_location"]])
		items?: matchN(1, [_#defs."/$defs/rule/$defs/items", [..._#defs."/$defs/rule/$defs/items"]])
		location?: matchN(1, [_#defs."/$defs/rule/$defs/location", [..._#defs."/$defs/rule/$defs/location"]])
		primary?: matchN(1, [_#defs."/$defs/rule/$defs/primary", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/primary"]])
		region?: matchN(1, [_#defs."/$defs/rule/$defs/region", [..._#defs."/$defs/rule/$defs/region"]])
		secondary?: matchN(1, [_#defs."/$defs/rule/$defs/secondary", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/secondary"]])
	})

	_#defs: "/$defs/rule/$defs/geo_proximity_location": close({
		bias?:                   string
		endpoint_reference?:     string
		evaluate_target_health?: bool
		health_check?:           string
		latitude?:               string
		longitude?:              string
		region?:                 string
		rule_reference?:         string
	})

	_#defs: "/$defs/rule/$defs/items": close({
		endpoint_reference?: string
		health_check?:       string
	})

	_#defs: "/$defs/rule/$defs/location": close({
		continent?:              string
		country?:                string
		endpoint_reference?:     string
		evaluate_target_health?: bool
		health_check?:           string
		is_default?:             bool
		rule_reference?:         string
		subdivision?:            string
	})

	_#defs: "/$defs/rule/$defs/primary": close({
		endpoint_reference?:     string
		evaluate_target_health?: bool
		health_check?:           string
		rule_reference?:         string
	})

	_#defs: "/$defs/rule/$defs/region": close({
		endpoint_reference?:     string
		evaluate_target_health?: bool
		health_check?:           string
		region?:                 string
		rule_reference?:         string
	})

	_#defs: "/$defs/rule/$defs/secondary": close({
		endpoint_reference?:     string
		evaluate_target_health?: bool
		health_check?:           string
		rule_reference?:         string
	})
}
