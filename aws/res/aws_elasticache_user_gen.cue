package res

import "list"

#aws_elasticache_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_elasticache_user")
	close({
		access_string!: string
		arn?:           string
		engine!:        string
		id?:            string
		authentication_mode?: matchN(1, [#authentication_mode, list.MaxItems(1) & [...#authentication_mode]])
		no_password_required?: bool
		passwords?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		user_id!:   string
		user_name!: string
		timeouts?:  #timeouts
	})

	#authentication_mode: close({
		password_count?: number
		passwords?: [...string]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
