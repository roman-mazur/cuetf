package res

import "list"

#aws_sagemaker_code_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_code_repository")
	arn?:                 string
	code_repository_name: string
	id?:                  string
	tags?: [string]: string
	tags_all?: [string]: string
	git_config?: #git_config | list.MaxItems(1) & [_, ...] & [...#git_config]

	#git_config: {
		branch?:        string
		repository_url: string
		secret_arn?:    string
	}
}
