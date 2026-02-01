package res

#aws_sesv2_tenant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sesv2_tenant")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		sending_status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		tenant_arn?:  string
		tenant_id?:   string
		tenant_name!: string
	})
}
