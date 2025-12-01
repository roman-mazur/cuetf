package res

import "list"

#aws_sagemaker_code_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_code_repository")
	close({
		arn?:                  string
		code_repository_name!: string
		id?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		git_config!: matchN(1, [#git_config, list.MaxItems(1) & [_, ...] & [...#git_config]])
	})

	#git_config: close({
		branch?:         string
		repository_url!: string
		secret_arn?:     string
	})
}
