package data

aws_sagemaker_hub_content: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_sagemaker_hub_content")
	close({
		creation_time?:           string
		document_schema_version?: string
		failure_reason?:          string
		hub_arn?:                 string
		hub_content_arn?:         string
		hub_content_dependency?: [...close({
			dependency_copy_path?:   string
			dependency_origin_path?: string
		})]
		hub_content_description?:  string
		hub_content_display_name?: string
		hub_content_document?:     string
		hub_content_markdown?:     string
		hub_content_name!:         string
		hub_content_search_keywords?: [...string]
		hub_content_status?:    string
		hub_content_type!:      string
		hub_content_version?:   string
		hub_name!:              string
		last_modified_time?:    string
		reference_min_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                           string
		sagemaker_public_hub_content_arn?: string
		support_status?:                   string
		versioned_hub_content_arn?:        string
	})
}
