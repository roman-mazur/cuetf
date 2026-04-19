package data

#aws_opensearchserverless_collection_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_opensearchserverless_collection_groups")
	close({
		// List of collection group summaries.
		collection_group_summaries?: [...close({
			arn?: string
			capacity_limits?: [...close({
				max_indexing_capacity_in_ocu?: number
				max_search_capacity_in_ocu?:   number
				min_indexing_capacity_in_ocu?: number
				min_search_capacity_in_ocu?:   number
			})]
			created_date?:          string
			id?:                    string
			name?:                  string
			number_of_collections?: number
			standby_replicas?:      string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
