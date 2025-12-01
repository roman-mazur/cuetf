package res

#aws_connect_user_hierarchy_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_connect_user_hierarchy_group")
	close({
		arn?:                string
		hierarchy_group_id?: string
		hierarchy_path?: [...close({
			level_five?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			level_four?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			level_one?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			level_three?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
			level_two?: [...close({
				arn?:  string
				id?:   string
				name?: string
			})]
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		instance_id!:     string
		level_id?:        string
		name!:            string
		parent_group_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
