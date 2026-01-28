package res

#aws_codecommit_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codecommit_repository")
	close({
		arn?:            string
		clone_url_http?: string
		clone_url_ssh?:  string
		default_branch?: string
		description?:    string
		id?:             string
		kms_key_id?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		repository_id?:   string
		repository_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
