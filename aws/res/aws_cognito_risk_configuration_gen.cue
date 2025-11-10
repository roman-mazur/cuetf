package res

import "list"

#aws_cognito_risk_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_risk_configuration")
	close({
		client_id?: string
		id?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		user_pool_id!: string
		account_takeover_risk_configuration?: matchN(1, [#account_takeover_risk_configuration, list.MaxItems(1) & [...#account_takeover_risk_configuration]])
		compromised_credentials_risk_configuration?: matchN(1, [#compromised_credentials_risk_configuration, list.MaxItems(1) & [...#compromised_credentials_risk_configuration]])
		risk_exception_configuration?: matchN(1, [#risk_exception_configuration, list.MaxItems(1) & [...#risk_exception_configuration]])
	})

	#account_takeover_risk_configuration: close({
		actions!: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/actions", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/actions"]])
		notify_configuration?: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration", list.MaxItems(1) & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration"]])
	})

	#compromised_credentials_risk_configuration: close({
		actions!: matchN(1, [_#defs."/$defs/compromised_credentials_risk_configuration/$defs/actions", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/compromised_credentials_risk_configuration/$defs/actions"]])
		event_filter?: [...string]
	})

	#risk_exception_configuration: close({
		blocked_ip_range_list?: [...string]
		skipped_ip_range_list?: [...string]
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/actions": close({
		high_action?: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/actions/$defs/high_action", list.MaxItems(1) & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/actions/$defs/high_action"]])
		low_action?: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/actions/$defs/low_action", list.MaxItems(1) & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/actions/$defs/low_action"]])
		medium_action?: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/actions/$defs/medium_action", list.MaxItems(1) & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/actions/$defs/medium_action"]])
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/actions/$defs/high_action": close({
		event_action!: string
		notify!:       bool
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/actions/$defs/low_action": close({
		event_action!: string
		notify!:       bool
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/actions/$defs/medium_action": close({
		event_action!: string
		notify!:       bool
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/notify_configuration": close({
		block_email?: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/block_email", list.MaxItems(1) & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/block_email"]])
		mfa_email?: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/mfa_email", list.MaxItems(1) & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/mfa_email"]])
		no_action_email?: matchN(1, [_#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/no_action_email", list.MaxItems(1) & [..._#defs."/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/no_action_email"]])
		from?:       string
		reply_to?:   string
		source_arn!: string
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/block_email": close({
		html_body!: string
		subject!:   string
		text_body!: string
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/mfa_email": close({
		html_body!: string
		subject!:   string
		text_body!: string
	})

	_#defs: "/$defs/account_takeover_risk_configuration/$defs/notify_configuration/$defs/no_action_email": close({
		html_body!: string
		subject!:   string
		text_body!: string
	})

	_#defs: "/$defs/compromised_credentials_risk_configuration/$defs/actions": close({
		event_action!: string
	})
}
