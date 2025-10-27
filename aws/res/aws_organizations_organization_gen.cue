package res

#aws_organizations_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_organizations_organization")
	close({
		accounts?: [...close({
			arn?:              string
			email?:            string
			id?:               string
			joined_method?:    string
			joined_timestamp?: string
			name?:             string
			state?:            string
			status?:           string
		})]
		arn?: string
		aws_service_access_principals?: [...string]
		enabled_policy_types?: [...string]
		feature_set?:          string
		id?:                   string
		master_account_arn?:   string
		master_account_email?: string
		master_account_id?:    string
		master_account_name?:  string
		non_master_accounts?: [...close({
			arn?:              string
			email?:            string
			id?:               string
			joined_method?:    string
			joined_timestamp?: string
			name?:             string
			state?:            string
			status?:           string
		})]
		roots?: [...close({
			arn?:  string
			id?:   string
			name?: string
			policy_types?: [...close({
				status?: string
				type?:   string
			})]
		})]
	})
}
