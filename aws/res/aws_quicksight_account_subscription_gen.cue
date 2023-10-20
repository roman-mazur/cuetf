package res

#aws_quicksight_account_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_quicksight_account_subscription")
	account_name:                 string
	account_subscription_status?: string
	active_directory_name?:       string
	admin_group?: [...string]
	authentication_method: string
	author_group?: [...string]
	aws_account_id?:    string
	contact_number?:    string
	directory_id?:      string
	edition:            string
	email_address?:     string
	first_name?:        string
	id?:                string
	last_name?:         string
	notification_email: string
	reader_group?: [...string]
	realm?:    string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
