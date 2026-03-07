package res

import "list"

#aws_cloudsearch_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudsearch_domain")
	close({
		endpoint_options?: matchN(1, [#endpoint_options, list.MaxItems(1) & [...#endpoint_options]])
		index_field?: matchN(1, [#index_field, [...#index_field]])
		scaling_parameters?: matchN(1, [#scaling_parameters, list.MaxItems(1) & [...#scaling_parameters]])
		timeouts?:                  #timeouts
		arn?:                       string
		document_service_endpoint?: string
		domain_id?:                 string
		id?:                        string
		multi_az?:                  bool
		name!:                      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		search_service_endpoint?: string
	})

	#endpoint_options: close({
		enforce_https?:       bool
		tls_security_policy?: string
	})

	#index_field: close({
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
	})

	#scaling_parameters: close({
		desired_instance_type?:     string
		desired_partition_count?:   number
		desired_replication_count?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
