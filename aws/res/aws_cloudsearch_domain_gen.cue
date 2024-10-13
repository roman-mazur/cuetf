package res

import "list"

#aws_cloudsearch_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudsearch_domain")
	arn?:                       string
	document_service_endpoint?: string
	domain_id?:                 string
	id?:                        string
	multi_az?:                  bool
	name!:                      string
	search_service_endpoint?:   string
	endpoint_options?: #endpoint_options | list.MaxItems(1) & [...#endpoint_options]
	index_field?: #index_field | [...#index_field]
	scaling_parameters?: #scaling_parameters | list.MaxItems(1) & [...#scaling_parameters]
	timeouts?: #timeouts

	#endpoint_options: {
		enforce_https?:       bool
		tls_security_policy?: string
	}

	#index_field: {
		analysis_scheme?: string
		default_value?:   string
		facet?:           bool
		highlight?:       bool
		name!:            string
		return?:          bool
		search?:          bool
		sort?:            bool
		source_fields?:   string
		type!:            string
	}

	#scaling_parameters: {
		desired_instance_type?:     string
		desired_partition_count?:   number
		desired_replication_count?: number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
