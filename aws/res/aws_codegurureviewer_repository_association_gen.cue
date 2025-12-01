package res

import "list"

#aws_codegurureviewer_repository_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codegurureviewer_repository_association")
	close({
		arn?:            string
		association_id?: string
		connection_arn?: string
		id?:             string
		name?:           string
		owner?:          string
		provider_type?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		kms_key_details?: matchN(1, [#kms_key_details, list.MaxItems(1) & [...#kms_key_details]])
		s3_repository_details?: [...close({
			bucket_name?: string
			code_artifacts?: [...close({
				build_artifacts_object_key?:       string
				source_code_artifacts_object_key?: string
			})]
		})]
		state?:        string
		state_reason?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		repository!: matchN(1, [#repository, list.MaxItems(1) & [_, ...] & [...#repository]])
		timeouts?: #timeouts
	})

	#kms_key_details: close({
		encryption_option?: string
		kms_key_id?:        string
	})

	#repository: close({
		bitbucket?: matchN(1, [_#defs."/$defs/repository/$defs/bitbucket", list.MaxItems(1) & [..._#defs."/$defs/repository/$defs/bitbucket"]])
		codecommit?: matchN(1, [_#defs."/$defs/repository/$defs/codecommit", list.MaxItems(1) & [..._#defs."/$defs/repository/$defs/codecommit"]])
		github_enterprise_server?: matchN(1, [_#defs."/$defs/repository/$defs/github_enterprise_server", list.MaxItems(1) & [..._#defs."/$defs/repository/$defs/github_enterprise_server"]])
		s3_bucket?: matchN(1, [_#defs."/$defs/repository/$defs/s3_bucket", list.MaxItems(1) & [..._#defs."/$defs/repository/$defs/s3_bucket"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/repository/$defs/bitbucket": close({
		connection_arn!: string
		name!:           string
		owner!:          string
	})

	_#defs: "/$defs/repository/$defs/codecommit": close({
		name!: string
	})

	_#defs: "/$defs/repository/$defs/github_enterprise_server": close({
		connection_arn!: string
		name!:           string
		owner!:          string
	})

	_#defs: "/$defs/repository/$defs/s3_bucket": close({
		bucket_name!: string
		name!:        string
	})
}
