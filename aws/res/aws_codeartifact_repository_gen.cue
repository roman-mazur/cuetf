package res

import "list"

#aws_codeartifact_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeartifact_repository")
	close({
		administrator_account?: string
		arn?:                   string
		description?:           string
		domain!:                string
		domain_owner?:          string
		id?:                    string
		region?:                string
		external_connections?: matchN(1, [#external_connections, list.MaxItems(1) & [...#external_connections]])
		repository!: string
		upstream?: matchN(1, [#upstream, [...#upstream]])
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
