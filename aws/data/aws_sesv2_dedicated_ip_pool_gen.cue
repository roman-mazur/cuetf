package data

#aws_sesv2_dedicated_ip_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_sesv2_dedicated_ip_pool")
	close({
		arn?: string
		dedicated_ips?: [...close({
			ip?:                string
			warmup_percentage?: number
			warmup_status?:     string
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		pool_name!:    string
		scaling_mode?: string
		tags?: [string]: string
	})
}
