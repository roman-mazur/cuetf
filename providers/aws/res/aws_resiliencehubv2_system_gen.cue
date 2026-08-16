package res

aws_resiliencehubv2_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_resiliencehubv2_system")
	close({
		arn?:             string
		description?:     string
		kms_key_id?:      string
		name!:            string
		organization_id?: string
		ou_id?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		sharing_enabled?: bool
		system_id?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
