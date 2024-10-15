package data

import "list"

#aws_route53_traffic_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_traffic_policy_document")
	id?:             string
	json?:           string
	record_type?:    string
	start_endpoint?: string
	start_rule?:     string
	version?:        string
	endpoint?: #endpoint | [...#endpoint]
	rule?: #rule | [...#rule]

	#endpoint: {
		id!:     string
		region?: string
		type?:   string
		value?:  string
	}

	#rule: {
		id!:   string
		type?: string
		geo_proximity_location?: #rule.#geo_proximity_location | [...#rule.#geo_proximity_location]
		items?: #rule.#items | [...#rule.#items]
		location?: #rule.#location | [...#rule.#location]
		primary?: #rule.#primary | list.MaxItems(1) & [...#rule.#primary]
		region?: #rule.#region | [...#rule.#region]
		secondary?: #rule.#secondary | list.MaxItems(1) & [...#rule.#secondary]

		#geo_proximity_location: {
			bias?:                   string
			endpoint_reference?:     string
			evaluate_target_health?: bool
			health_check?:           string
			latitude?:               string
			longitude?:              string
			region?:                 string
			rule_reference?:         string
		}

		#items: {
			endpoint_reference?: string
			health_check?:       string
		}

		#location: {
			continent?:              string
			country?:                string
			endpoint_reference?:     string
			evaluate_target_health?: bool
			health_check?:           string
			is_default?:             bool
			rule_reference?:         string
			subdivision?:            string
		}

		#primary: {
			endpoint_reference?:     string
			evaluate_target_health?: bool
			health_check?:           string
			rule_reference?:         string
		}

		#region: {
			endpoint_reference?:     string
			evaluate_target_health?: bool
			health_check?:           string
			region?:                 string
			rule_reference?:         string
		}

		#secondary: {
			endpoint_reference?:     string
			evaluate_target_health?: bool
			health_check?:           string
			rule_reference?:         string
		}
	}
}
