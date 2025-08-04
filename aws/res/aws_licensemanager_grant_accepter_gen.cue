package res

#aws_licensemanager_grant_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_licensemanager_grant_accepter")
	close({
		// Allowed operations for the grant.
		allowed_operations?: [...string]

		// Amazon Resource Name (ARN) of the grant.
		grant_arn!: string

		// Home Region of the grant.
		home_region?: string

		// License ARN.
		license_arn?: string
		id?:          string

		// Name of the grant.
		name?: string

		// Parent ARN.
		parent_arn?: string

		// The grantee principal ARN.
		principal?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// GrantAccepter status.
		status?: string

		// GrantAccepter version.
		version?: string
	})
}
