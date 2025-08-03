package res

#aws_quicksight_ip_restriction: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_ip_restriction")
	close({
		aws_account_id?: string
		enabled!:        bool
		ip_restriction_rule_map?: [string]: string
		region?: string
		vpc_endpoint_id_restriction_rule_map?: [string]: string
		vpc_id_restriction_rule_map?: [string]:          string
	})
}
