package res

#aws_db_proxy_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_proxy_endpoint")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		db_proxy_endpoint_name!: string
		db_proxy_name!:          string
		endpoint?:               string
		id?:                     string
		is_default?:             bool
		timeouts?:               #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		target_role?: string
		vpc_id?:      string
		vpc_security_group_ids?: [...string]
		vpc_subnet_ids!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
