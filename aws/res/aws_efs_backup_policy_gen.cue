package res

import "list"

#aws_efs_backup_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_backup_policy")
	close({
		backup_policy?: matchN(1, [#backup_policy, list.MaxItems(1) & [_, ...] & [...#backup_policy]])
		file_system_id!: string
		id?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#backup_policy: close({
		status!: string
	})
}
