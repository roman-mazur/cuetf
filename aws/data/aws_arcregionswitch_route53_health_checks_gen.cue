package data

#aws_arcregionswitch_route53_health_checks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_arcregionswitch_route53_health_checks")
	close({
		health_checks?: [...close({
			health_check_id?: string
			hosted_zone_id?:  string
			record_name?:     string
			region?:          string
			status?:          string
		})]
		plan_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
