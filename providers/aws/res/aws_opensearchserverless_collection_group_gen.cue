package res

#aws_opensearchserverless_collection_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_opensearchserverless_collection_group")
	close({
		arn?: string
		capacity_limits?: [...close({
			max_indexing_capacity_in_ocu?: number
			max_search_capacity_in_ocu?:   number
			min_indexing_capacity_in_ocu?: number
			min_search_capacity_in_ocu?:   number
		})]

		// Date the collection group was created.
		created_date?: string

		// Description of the collection group.
		description?: string
		id?:          string

		// Name of the collection group.
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Indicates whether standby replicas should be used for
		// collections in this group. One of `ENABLED` or `DISABLED`.
		standby_replicas!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
