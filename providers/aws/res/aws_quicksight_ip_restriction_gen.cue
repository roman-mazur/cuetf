package res

#aws_quicksight_ip_restriction: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_quicksight_ip_restriction")
	close({
		aws_account_id?: string
		enabled!:        bool
		ip_restriction_rule_map?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		vpc_endpoint_id_restriction_rule_map?: [string]: string
		vpc_id_restriction_rule_map?: [string]:          string
	})
}
