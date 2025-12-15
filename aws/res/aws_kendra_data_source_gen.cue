package res

import "list"

#aws_kendra_data_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_kendra_data_source")
	close({
		arn?:            string
		created_at?:     string
		data_source_id?: string
		description?:    string
		error_message?:  string
		id?:             string
		index_id!:       string
		language_code?:  string
		name!:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		role_arn?: string
		schedule?: string
		status?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!:       string
		updated_at?: string
		custom_document_enrichment_configuration?: matchN(1, [#custom_document_enrichment_configuration, list.MaxItems(1) & [...#custom_document_enrichment_configuration]])
		timeouts?: #timeouts
	})

	#configuration: close({
		s3_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/s3_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/s3_configuration"]])
		template_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/template_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/template_configuration"]])
		web_crawler_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/web_crawler_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/web_crawler_configuration"]])
	})

	#custom_document_enrichment_configuration: close({
		inline_configurations?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations", list.MaxItems(100) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations"]])
		post_extraction_hook_configuration?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration"]])
		pre_extraction_hook_configuration?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration"]])
		role_arn?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/s3_configuration": close({
		access_control_list_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/s3_configuration/$defs/access_control_list_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/s3_configuration/$defs/access_control_list_configuration"]])
		bucket_name!: string
		exclusion_patterns?: [...string]
		inclusion_patterns?: [...string]
		inclusion_prefixes?: [...string]
		documents_metadata_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/s3_configuration/$defs/documents_metadata_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/s3_configuration/$defs/documents_metadata_configuration"]])
	})

	_#defs: "/$defs/configuration/$defs/s3_configuration/$defs/access_control_list_configuration": close({
		key_path?: string
	})

	_#defs: "/$defs/configuration/$defs/s3_configuration/$defs/documents_metadata_configuration": close({
		s3_prefix?: string
	})

	_#defs: "/$defs/configuration/$defs/template_configuration": close({
		template!: string
	})

	_#defs: "/$defs/configuration/$defs/web_crawler_configuration": close({
		authentication_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/authentication_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/authentication_configuration"]])
		crawl_depth?:                             number
		max_content_size_per_page_in_mega_bytes?: number
		max_links_per_page?:                      number
		max_urls_per_minute_crawl_rate?:          number
		url_exclusion_patterns?: [...string]
		url_inclusion_patterns?: [...string]
		proxy_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/proxy_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/proxy_configuration"]])
		urls!: matchN(1, [_#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/urls", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/urls"]])
	})

	_#defs: "/$defs/configuration/$defs/web_crawler_configuration/$defs/authentication_configuration": close({
		basic_authentication?: matchN(1, [_#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/authentication_configuration/$defs/basic_authentication", list.MaxItems(10) & [..._#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/authentication_configuration/$defs/basic_authentication"]])
	})

	_#defs: "/$defs/configuration/$defs/web_crawler_configuration/$defs/authentication_configuration/$defs/basic_authentication": close({
		credentials!: string
		host!:        string
		port!:        number
	})

	_#defs: "/$defs/configuration/$defs/web_crawler_configuration/$defs/proxy_configuration": close({
		credentials?: string
		host!:        string
		port!:        number
	})

	_#defs: "/$defs/configuration/$defs/web_crawler_configuration/$defs/urls": close({
		seed_url_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/urls/$defs/seed_url_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/urls/$defs/seed_url_configuration"]])
		site_maps_configuration?: matchN(1, [_#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/urls/$defs/site_maps_configuration", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/web_crawler_configuration/$defs/urls/$defs/site_maps_configuration"]])
	})

	_#defs: "/$defs/configuration/$defs/web_crawler_configuration/$defs/urls/$defs/seed_url_configuration": close({
		seed_urls!: [...string]
		web_crawler_mode?: string
	})

	_#defs: "/$defs/configuration/$defs/web_crawler_configuration/$defs/urls/$defs/site_maps_configuration": close({
		site_maps!: [...string]
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/inline_configurations": close({
		condition?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/condition"]])
		target?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/target", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/target"]])
		document_content_deletion?: bool
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/condition": close({
		condition_on_value?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/condition/$defs/condition_on_value", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/condition/$defs/condition_on_value"]])
		condition_document_attribute_key!: string
		operator!:                         string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/condition/$defs/condition_on_value": close({
		date_value?: string
		long_value?: number
		string_list_value?: [...string]
		string_value?: string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/target": close({
		target_document_attribute_value?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/target/$defs/target_document_attribute_value", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/target/$defs/target_document_attribute_value"]])
		target_document_attribute_key?:            string
		target_document_attribute_value_deletion?: bool
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/inline_configurations/$defs/target/$defs/target_document_attribute_value": close({
		date_value?: string
		long_value?: number
		string_list_value?: [...string]
		string_value?: string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration": close({
		invocation_condition?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration/$defs/invocation_condition", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration/$defs/invocation_condition"]])
		lambda_arn!: string
		s3_bucket!:  string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration/$defs/invocation_condition": close({
		condition_on_value?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration/$defs/invocation_condition/$defs/condition_on_value", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration/$defs/invocation_condition/$defs/condition_on_value"]])
		condition_document_attribute_key!: string
		operator!:                         string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/post_extraction_hook_configuration/$defs/invocation_condition/$defs/condition_on_value": close({
		date_value?: string
		long_value?: number
		string_list_value?: [...string]
		string_value?: string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration": close({
		invocation_condition?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration/$defs/invocation_condition", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration/$defs/invocation_condition"]])
		lambda_arn!: string
		s3_bucket!:  string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration/$defs/invocation_condition": close({
		condition_on_value?: matchN(1, [_#defs."/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration/$defs/invocation_condition/$defs/condition_on_value", list.MaxItems(1) & [..._#defs."/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration/$defs/invocation_condition/$defs/condition_on_value"]])
		condition_document_attribute_key!: string
		operator!:                         string
	})

	_#defs: "/$defs/custom_document_enrichment_configuration/$defs/pre_extraction_hook_configuration/$defs/invocation_condition/$defs/condition_on_value": close({
		date_value?: string
		long_value?: number
		string_list_value?: [...string]
		string_value?: string
	})
}
