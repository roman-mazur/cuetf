package res

import "list"

#aws_codeartifact_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codeartifact_repository")
	close({
		administrator_account?: string
		arn?:                   string
		description?:           string
		domain!:                string
		domain_owner?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		external_connections?: matchN(1, [#external_connections, list.MaxItems(1) & [...#external_connections]])
		id?: string
		upstream?: matchN(1, [#upstream, [...#upstream]])
		repository!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#external_connections: close({
		external_connection_name!: string
		package_format?:           string
		status?:                   string
	})

	#upstream: close({
		repository_name!: string
	})
}
