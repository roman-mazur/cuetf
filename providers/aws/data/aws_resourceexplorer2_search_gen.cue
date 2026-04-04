package data

#aws_resourceexplorer2_search: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_resourceexplorer2_search")
	close({
		id?:           string
		query_string!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		resource_count?: [...close({
			complete?:        bool
			total_resources?: number
		})]
		resources?: [...close({
			arn?:               string
			last_reported_at?:  string
			owning_account_id?: string
			properties?: [...close({
				data?:             string
				last_reported_at?: string
				name?:             string
			})]
			region?:        string
			resource_type?: string
			service?:       string
		})]
		view_arn?: string
	})
}
