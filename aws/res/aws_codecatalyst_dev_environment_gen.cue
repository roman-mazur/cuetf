package res

import "list"

#aws_codecatalyst_dev_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codecatalyst_dev_environment")
	close({
		alias?:                      string
		id?:                         string
		inactivity_timeout_minutes?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		instance_type!: string
		project_name!:  string
		ides!: matchN(1, [#ides, list.MaxItems(1) & [_, ...] & [...#ides]])
		space_name!: string
		persistent_storage!: matchN(1, [#persistent_storage, list.MaxItems(1) & [_, ...] & [...#persistent_storage]])
		repositories?: matchN(1, [#repositories, list.MaxItems(100) & [...#repositories]])
		timeouts?: #timeouts
	})

	#ides: close({
		name?:    string
		runtime?: string
	})

	#persistent_storage: close({
		size!: number
	})

	#repositories: close({
		branch_name?:     string
		repository_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
