package res

import "list"

#aws_quicksight_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_folder")
	close({
		arn?: string
		permissions?: matchN(1, [#permissions, list.MaxItems(64) & [...#permissions]])
		aws_account_id?: string
		created_time?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		folder_id!: string
		folder_path?: [...string]
		folder_type?:       string
		timeouts?:          #timeouts
		id?:                string
		last_updated_time?: string
		name?:              string
		parent_folder_arn?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#permissions: close({
		actions!: [...string]
		principal!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
