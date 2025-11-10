package res

import "list"

#aws_s3_bucket_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_acl")
	close({
		acl?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		bucket!:                string
		expected_bucket_owner?: string
		id?:                    string
		access_control_policy?: matchN(1, [#access_control_policy, list.MaxItems(1) & [...#access_control_policy]])
	})

	#access_control_policy: close({
		grant?: matchN(1, [_#defs."/$defs/access_control_policy/$defs/grant", [..._#defs."/$defs/access_control_policy/$defs/grant"]])
		owner!: matchN(1, [_#defs."/$defs/access_control_policy/$defs/owner", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/access_control_policy/$defs/owner"]])
	})

	_#defs: "/$defs/access_control_policy/$defs/grant": close({
		grantee?: matchN(1, [_#defs."/$defs/access_control_policy/$defs/grant/$defs/grantee", list.MaxItems(1) & [..._#defs."/$defs/access_control_policy/$defs/grant/$defs/grantee"]])
		permission!: string
	})

	_#defs: "/$defs/access_control_policy/$defs/grant/$defs/grantee": close({
		email_address?: string
		id?:            string
		type!:          string
		uri?:           string
	})

	_#defs: "/$defs/access_control_policy/$defs/owner": close({
		id!: string
	})
}
